# auto-push.ps1 — 自动提交新增文章并推送到 GitHub
# 由 Windows 任务计划程序每天 12:00 执行

$repoPath = "D:\code\blog\theLustre.github.io"
$logFile = "D:\code\blog\theLustre.github.io\auto-push.log"

function Log($msg) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp  $msg" | Out-File -Append -FilePath $logFile -Encoding utf8
}

try {
    Set-Location $repoPath

    # 只暂存 src/ 下的新增和修改（文章目录）
    $staged = git add src/ --dry-run 2>&1
    if (-not $staged) {
        Log "No new changes in src/, skipping."
        return
    }

    git add src/
    $date = Get-Date -Format "yyyy-MM-dd"
    git commit -m "auto: new articles on $date" 2>&1 | Out-Null

    # 推送（使用 SakuraCat 代理）
    $env:HTTP_PROXY = "http://127.0.0.1:7897"
    $env:HTTPS_PROXY = "http://127.0.0.1:7897"
    git push origin main 2>&1

    Log "Pushed successfully."
} catch {
    Log "ERROR: $($_.Exception.Message)"
}
