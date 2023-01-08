---
title: "ひきつづきN-VOX"
description:
date: 2022-12-25
draft: false
categories:
  - "drepo"
tags:
  - "nvox"
  - "voicevox"
  - "next.js"
  - "styled-components"
---

# Warning: Prop `className` did not match.~

CSSがおかしくなるなーとおもいつつ、JSうごくしまあええかってなってたけど

レイアウト調整してるときにどうしても無視できなくなったのでぐぐったら一発で解決した。

.babelrcとbabel-plugin-styled-componentsをインスコしておわりっ

# 3日目(12/22)

## やったこと

- 見た目修正
- voicevoxで生成するwavの素材になるtext, descを記事から直接取得するように


## 次やること

レイアウト調整、新機能

## 証跡

[RSS記事コンテンツを直接取得するように修正 · wasuken/nvox_srv@5951ff8 · GitHub](https://github.com/wasuken/nvox_srv/commit/5951ff8174b2ba1b12243c8aad02d019a23c8dac)

# 4日目(12/25)

## やったこと

- openai
  - chatできるようにした。

## 次やること

- レイアウトの調整
  - navbar


## 証跡

[openai周り実装 · wasuken/nvox_srv@42a09bc · GitHub](https://github.com/wasuken/nvox_srv/commit/42a09bc3a9903023f3d1de4785d11a6bf8e7b3da)
