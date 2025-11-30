# GitHub Pages 部署问题修复

## 问题：Jekyll 构建错误

如果遇到类似错误：
```
YAML Exception reading /github/workspace/src/pages/index.astro
Invalid YAML front matter
```

这是因为 GitHub Pages 正在尝试使用 Jekyll 构建 Astro 项目。

## 解决方案

### 1. 检查 GitHub Pages 设置

1. 前往仓库：https://github.com/theLustre/theLustre.github.io
2. 进入 **Settings** → **Pages**
3. 在 **Build and deployment** 部分：
   - **Source** 必须选择：**GitHub Actions**（不是 "Deploy from a branch"）
   - 如果显示 "Deploy from a branch"，请改为 "GitHub Actions"

### 2. 确保文件已创建

- ✅ `.nojekyll` 文件已创建在 `public/` 目录
- ✅ `astro.config.mjs` 已配置正确的 site URL
- ✅ `.github/workflows/deploy.yml` 工作流已存在

### 3. 验证部署

1. 推送代码到 `main` 分支
2. 前往 **Actions** 标签页
3. 查看 "Deploy Astro to GitHub Pages" 工作流是否成功运行
4. 如果失败，检查错误日志

### 4. 如果仍然使用 Jekyll

如果 GitHub Pages 仍然尝试使用 Jekyll：

1. 在仓库根目录创建 `.nojekyll` 文件（空文件即可）
2. 提交并推送：
   ```bash
   touch .nojekyll
   git add .nojekyll
   git commit -m "Add .nojekyll to disable Jekyll"
   git push
   ```

### 5. 清理缓存

如果问题持续：

1. 前往 **Settings** → **Pages**
2. 临时将 Source 改为 "None"，保存
3. 等待几秒
4. 再改回 "GitHub Actions"，保存

## 正确的部署流程

1. 代码推送到 `main` 分支
2. GitHub Actions 自动触发
3. 运行 `npm ci` 和 `npm run build`
4. 将 `dist/` 目录部署到 GitHub Pages
5. 网站更新完成

## 验证

部署成功后，访问：https://thelustre.github.io

如果看到你的网站，说明部署成功！

