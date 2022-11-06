---
title: "ログ(空ファイル処理とか)"
description:
date: 2022-11-05
draft: false
categories:
  - "drepo"
tags:
  - "shell"
  - "blog"
  - "astro"
  - "exif"
---

# 空ファイルの掃討

findの-emptyつかえばいけた。

```bash
$ find . -type f -empty| xargs rm
```

memoブランチで上つかって空ファイルけした。

# exifの削除(Linux)

[Remove Exif Data in Linux Command Line](https://linuxhandbook.com/remove-exif-data/)

```bash
$ sudo pacman -S perl-image-exiftool
$ exiftool -overwrite_original -all= <image_path>
```

# astroつかってみる

hugoなんか微妙なのでastroでつくりなおす。
