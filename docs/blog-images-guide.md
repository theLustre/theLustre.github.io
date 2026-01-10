# 博客配图指南

## 📁 图片目录结构

建议将博客图片存放在 `public/images/posts/` 目录下，按文章组织：

```
public/
  images/
    posts/
      post1/
        cover.jpg          # 文章封面图
        screenshot-1.png   # 文章内图片
      ML/
        cover.jpg
      AR增强现实apk/
        cover.jpg
```

## 🖼️ 在 Frontmatter 中配置封面图

### 方式一：使用对象格式（推荐）

```yaml
---
layout: ../../layouts/Layout.astro
title: "文章标题"
createdDate: 2025-12-31
lastUpdated: 2025-12-31
description: "文章描述"
image:
  url: "/images/posts/文章名/cover.jpg"
  alt: "封面图描述"
tags: ["标签1", "标签2"]
---
```

### 方式二：使用字符串格式（简单）

```yaml
---
layout: ../../layouts/Layout.astro
title: "文章标题"
createdDate: 2025-12-31
lastUpdated: 2025-12-31
description: "文章描述"
image: "/images/posts/文章名/cover.jpg"
tags: ["标签1", "标签2"]
---
```

## 📝 在 Markdown 中插入图片

在文章内容中，你可以使用标准的 Markdown 语法插入图片：

```markdown
![图片描述](/images/posts/文章名/screenshot-1.png)
```

或者使用 HTML 标签获得更多控制：

```html
<img src="/images/posts/文章名/screenshot-1.png" alt="图片描述" style="max-width: 100%; border-radius: 8px;" />
```

## 🎨 图片最佳实践

### 1. 封面图建议
- **尺寸**：建议 1200x630px（适合社交媒体分享）
- **格式**：JPG（文件小）或 WebP（现代浏览器，更小）
- **大小**：尽量压缩到 200KB 以下
- **内容**：与文章主题相关，视觉吸引力强

### 2. 文章内图片建议
- **宽度**：建议不超过 800px（与文章内容宽度匹配）
- **格式**：PNG（截图、图表）或 JPG（照片）
- **大小**：单张图片建议不超过 500KB
- **alt 文本**：始终添加有意义的描述

### 3. 图片优化工具
- **在线压缩**：TinyPNG、Squoosh
- **格式转换**：CloudConvert
- **批量处理**：ImageMagick、GIMP

## 📦 使用外部图片

你也可以使用外部图片链接（如 CDN、图床）：

```yaml
image:
  url: "https://example.com/image.jpg"
  alt: "封面图描述"
```

或者在 Markdown 中：

```markdown
![图片描述](https://example.com/image.jpg)
```

## 🔍 SEO 优化

- 所有图片都应该有 `alt` 属性
- 封面图会用于 Open Graph 和 Twitter Card（需要时可扩展）
- 使用描述性的文件名（如 `machine-learning-diagram.png` 而不是 `img1.png`）

## 💡 示例

查看 `src/pages/posts/post1.md` 可以看到一个完整的示例。








