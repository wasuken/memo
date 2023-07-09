---
title: "ほげ"
description:
date: 2023-07-08
draft: false
categories:
  - "drepo"
tags:
  - "nvox"
---

# nvox

## 複合主キー

[Prismaで複合主キーを設定する](https://zenn.dev/kaz_z/articles/prisma-unique-key)

```js
model Hoge{
	id. ..
	huga  ...
	@@unique([id, huga], name: "hoge_identifier")
}
```
