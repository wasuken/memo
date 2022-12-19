---
title: "HyIP"
description:
date: 2022-12-04
draft: false
categories:
  - "drepo"
tags:
  - "ip"
  - "Hy"
  - "ip"
  - "impl"
---

# configparserつかう

```lisp
(import configparser)
(setv cparser (configparser.ConfigParser))
(cparser.read path)
```

## Dictアクセス

```lisp

(get dict "test")

```

## format

```lisp
(setv hoge "unchi")
(print f"hoge{hoge}hoge") ;=> hogeunchihoge
```

formatで公式ページ検索したらでてきた。

## substring

```lisp
(cut "hoge" 0 2) ;=> ho
```

公式のtutorialにかいてた。
