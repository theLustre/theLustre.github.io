# 如何获取 Giscus ID（详细步骤）

如果 giscus.app 没有显示 ID，请按照以下步骤操作：

## 方法一：通过 giscus.app 获取（推荐）

1. **确保前置条件**：
   - ✅ Giscus 应用已安装到 `theLustre/theLustre.github.io` 仓库
   - ✅ 仓库已启用 Discussions
   - ✅ 至少创建了一个 Discussion category（如 "Announcements"）

2. **访问 giscus.app**：
   - 打开 https://giscus.app
   - 在 "Repository" 下拉菜单中，**必须选择 `theLustre/theLustre.github.io`**
   - **不要选择 "All repositories"**，必须选择特定仓库

3. **填写配置**：
   - Repository: `theLustre/theLustre.github.io`
   - Discussion category: 选择一个已存在的 category
   - Theme: Dark
   - Language: zh-CN

4. **获取 ID**：
   - 页面下方会显示一段 HTML 代码
   - 找到 `data-repo-id="R_xxxxxxxxxx"` - 这就是 repoId
   - 找到 `data-category-id="DIC_kwxxxxxxxxxx"` - 这就是 categoryId

## 方法二：手动创建 Discussion Category

如果 giscus.app 提示没有 category：

1. 前往 GitHub 仓库：https://github.com/theLustre/theLustre.github.io
2. 点击 "Discussions" 标签
3. 点击 "New discussion"
4. 在右侧选择 "Category"，如果没有 category，点击 "New category"
5. 创建一个名为 "Announcements" 的 category
6. 返回 giscus.app，刷新页面，重新选择

## 方法三：使用 GitHub API 获取（高级）

如果以上方法都不行，可以使用 GitHub API：

1. **获取 repoId**：
   ```bash
   curl -H "Accept: application/vnd.github.v3+json" \
        https://api.github.com/repos/theLustre/theLustre.github.io
   ```
   在返回的 JSON 中找到 `"id"` 字段，这就是 repoId

2. **获取 categoryId**：
   - 前往仓库的 Discussions 页面
   - 创建一个 Discussion 或查看现有 Discussion
   - 在 URL 或页面源码中找到 category ID

## 常见问题

**Q: 为什么选择 "All repositories" 没有 ID？**
A: giscus.app 需要知道具体的仓库才能生成对应的 ID。必须选择特定仓库。

**Q: 下拉菜单中没有我的仓库？**
A: 确保：
- Giscus 应用已安装到该仓库（不是所有仓库）
- 仓库是公开的（Public）
- 仓库已启用 Discussions

**Q: 显示 "No discussions found"？**
A: 需要先在 GitHub 仓库中创建至少一个 Discussion category。

