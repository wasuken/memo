---
title: "シチュ系ASMR...いい"
description:
date: 2023-07-07
draft: false
categories:
  - "drepo"
tags:
  - "nvox"
---

# getInitPropsでDB処理したいときにでたやつ

厳密にはgetInitPropsの外でimportしたファイルで

new PrismaClient

っぽいことしてるとこでエラーがでてとまったときにした対応。

const {method} = require("path/to/file")

してやった。

でも

[wasuken/ibox](https://github.com/wasuken/ibox/blob/main/src/pages/group/%5Bid%5D.tsx)

以前かいたこのコードだと別にエラーはいてないはずなんだが、なんでだ？
