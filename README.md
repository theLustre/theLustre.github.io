# theLustre.github.io

多媒体太空站（Astro 驱动）。主页整合了音乐播放器、视频墙和协作占位模块，风格参考 [AbabCat927.github.io](https://github.com/AbabCat927/AbabCat927.github.io) 的模块化布局。

## 🚀 快速开始

```bash
npm install
npm run dev    # http://localhost:4321
```

## 📦 主要结构

```
/
├── public/            # 静态资源，可放自定义背景图
├── src/
│   ├── assets/        # SVG 等素材
│   ├── pages/         # index.astro, Study.astro, posts/
│   ├── components/    # 可复用 UI
│   └── layouts/
└── .github/workflows/ # GitHub Pages 部署
```

## 🌐 部署到 GitHub Pages

1. 仓库命名为 `theLustre/theLustre.github.io`，推送 `main` 分支。
2. `.github/workflows/deploy.yml` 会在 push 时自动执行：`npm ci` → `npm run build` → 发布 `dist/`。
3. 在仓库 Settings → Pages 中保持 “Build and deployment = GitHub Actions”，发布地址即 `https://thelustre.github.io`。

如果需要自定义域名，在 DNS 新增 `CNAME` 指向 `thelustre.github.io`，并在 Pages 设置里填写该域名。

## 🧪 常用命令

| Command         | Description                     |
| :-------------- | :------------------------------ |
| `npm run dev`   | 本地开发服务器                  |
| `npm run build` | 产出静态文件到 `dist/`          |
| `npm run preview` | 预览构建结果                  |

## 📚 下一步

- `src/pages/posts/` 下已有示例 Markdown，可扩展为博客/日志。
- 想集成实时协作，可在 `collab` 区块接入 Supabase Realtime、Liveblocks 等服务。

欢迎继续基于 Astro 自定义主题或添加 docs 集合。若参考项目有新的想法，也可以开 issue/PR 讨论。*** End Patch
