---
layout: ../../layouts/Layout.astro
title: "AR 增强现实 APK 开发记录"
createdDate: 2025-12-03
lastUpdated: 2025-12-03
description: "第一次使用 Android Studio 开发 AR APK 时遇到的代理与技术选型问题。"
tags: ["android", "AR", "HMS", "开发记录"]
---

## 初次体验 Android Studio

这是我第一次使用 Android Studio 进行开发。这个 IDE 的最大特点是构建 APK 非常方便，只要点击运行按钮，就能把应用安装到手机上并立即体验。

## 代理与 Gradle 同步问题

刚开始 IDE 的 auto-detect proxy 明明可以 ping 通 Google，但在执行 *Sync with Gradle* 时却频繁超时。最终发现 IDE 代理与 Gradle 代理是独立配置的，需要在 `gradle.properties` 中另外设置 JVM 代理端口（我使用的是 7890）。补齐这一配置后，Gradle 同步就恢复正常了。

## 技术选型调整：AR Core → HMS Core

原本计划使用 AR Core，但我主要使用华为手机，而华为体系的 AR 能力是基于 **AR Engine / HMS Core**。因此项目中途需要调整技术选型，转而研究 HMS Core 提供的 AR 功能。虽然多了一些学习成本，但更贴合实际运行环境。