# 评论系统配置指南

## 使用 Giscus 评论系统

本博客使用 [Giscus](https://giscus.app) 作为评论系统，它基于 GitHub Discussions，需要 GitHub 账号才能评论。

### 配置步骤

1. **启用 GitHub Discussions**
   - 前往你的 GitHub 仓库：`https://github.com/theLustre/theLustre.github.io`
   - 进入 Settings → General → Features
   - 启用 "Discussions" 功能

2. **安装 Giscus 应用** ⚠️ **重要！**
   - 访问 [https://github.com/apps/giscus](https://github.com/apps/giscus)
   - 点击 "Install" 按钮
   - 选择你的仓库 `theLustre/theLustre.github.io`
   - 点击 "Install" 完成安装
   - **这一步必须完成，否则会显示 "giscus is not installed" 错误**

3. **获取 Giscus 配置** ⚠️ **重要：必须选择特定仓库**
   - 访问 [https://giscus.app](https://giscus.app)
   - **重要**：在 "Repository" 下拉菜单中，必须选择 `theLustre/theLustre.github.io`（不要选择 "All repositories"）
   - 如果下拉菜单中没有你的仓库，请先确保：
     - Giscus 应用已安装到该仓库
     - 仓库已启用 Discussions
   - 按照提示填写：
     - Repository: `theLustre/theLustre.github.io`（必须选择这个特定仓库）
     - Discussion category: 选择 "Announcements"（如果还没有，先在 GitHub 仓库中创建一个）
     - 选择主题：Dark
     - 语言：中文
   - 完成后，页面下方会显示配置代码，找到：
     - `data-repo-id="..."` - 这就是 repoId
     - `data-category-id="..."` - 这就是 categoryId
   - **如果还是没有显示 ID**，请尝试：
     1. 在 GitHub 仓库中手动创建一个 Discussion category
     2. 刷新 giscus.app 页面
     3. 重新选择仓库和 category

4. **更新配置**
   - 打开 `src/components/Comments.astro`
   - 找到以下配置项并更新：
     ```astro
     repo = "theLustre/theLustre.github.io"
     repoId = "你的 repo ID"  // 从 giscus.app 获取的 data-repo-id 值
     category = "Announcements"
     categoryId = "你的 category ID"  // 从 giscus.app 获取的 data-category-id 值
     ```

### 评论者要求

- 需要 GitHub 账号才能评论
- 评论时会显示 GitHub 用户名
- 可以通过 GitHub 设置选择是否公开显示邮箱

### 特点

- ✅ 免费使用
- ✅ 无需后端服务器
- ✅ 评论存储在 GitHub Discussions
- ✅ 支持 Markdown 格式
- ✅ 支持回复和反应（👍）
- ✅ 暗色主题适配

