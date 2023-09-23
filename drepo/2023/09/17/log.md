---
title: "進捗"
description:
date: 2023-09-17
draft: false
categories:
  - "drepo"
tags:
  - "lisp"
---

# slime で print debug が表示されない

```lisp
(defun test (hoge)
  (print hoge)
  (loop ...))
```

といったコードだと途中の print が実行はされているはずだが、

slime にはとくに表示されることもなくおわる。
