---
title: "分割CSVを並行して検索処理する"
description:
date: 2022-06-12
draft: false
categories:
  - "drepo"
tags:
  - "csv"
  - "ruby"
  - "search"
---

やっていき。

処理としては

1. CSVファイルからIOを取得, CSV.newで
2. 配列へ格納。
3. 処理が終わるまで配列内部のIOを進め続けるとなる。

---

考えてみたけど効率化できなくね？となったので現在検証中。
