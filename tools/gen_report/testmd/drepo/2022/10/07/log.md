---
title: "ログ(mount)"
description:
date: 2022-10-08
draft: false
categories:
  - "drepo"
tags:
  - "mount"
  - "linux"
---

# ストレージ(USB)をマウントすると文字化けする

マウントした領域への日本語ファイルのコピーに失敗した。

日本語ファイルのtouchすらできない。

別の端末へのマウントではとくに問題はなかった。

```sh
$ sudo mount /dev/sdxn <mount path> -o iocharset=utf8
```

iocharset=utf8を指定することで解決した。

別端末にマウントしたときはちゃんと表示できたのにな。

alma...
