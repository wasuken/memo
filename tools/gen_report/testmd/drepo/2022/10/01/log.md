---
title: "ログ(DBとか)"
description:
date: 2022-10-01
draft: false
categories:
  - "diary"
tags:
  - "database"
  - "btree"
  - "lisp"
---

# roswell setup to note pc

arch linux

```
$ sudo pacman -S roswell
$ ros install sbcl
$ ros install slime
```

slimeインスコわすれて時間かかった。

次のコードも追記しておく。

```lisp
; init.el
(load (expand-file-name "~/.roswell/helper.el"))
```

そして、PATHもとおす。

今回の環境ではzsh利用しているので、~/.zshrcに

```
export PATH=$PATH:$HOME/.roswell/bin
```

を追加した。
