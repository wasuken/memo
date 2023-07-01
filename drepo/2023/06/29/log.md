---
title: "Emacsのrust-modeに付属してるrust-testのargumentsを編集したい"
description:
date: 2023-06-29
draft: false
categories:
  - "drepo"
tags:
  - "emacs"
---

# Emacsのrust-modeに付属してるrust-testのargumentsを編集したい

rustでtodo管理をcliでやるサンプルをかいてる。

ファイルをあつかいテストのときに固定の、同じパスを操作するような処理があるとき、

同時実行をおこなわれると、まざってしまってエラーになることがあった。

その対策としては、cargo test  -- --test-threads=1と引数をわたすことだった。

シングルスレッドで動作させることでテストが並列に動作しなくなるため、

ファイルが同時に操作されることがなくなる。

というわけで解決。

というわけにもいかず、ここからが本題で、emacsのrust-modeに付属してるrust-testコマンドは

cargo testを実行しているが、引数を変更する必要がある。

しかし、どこをかえればいいんだ？

readmeにはなんもなかったけどソースみてみたら

[rust-mode/rust-cargo.el at e443ccf2884028d3b6cc550ff20e7c92dadccb68 · rust-lang/rust-mode · GitHub](https://github.com/rust-lang/rust-mode/blob/e443ccf2884028d3b6cc550ff20e7c92dadccb68/rust-cargo.el#L106)

rust-cargo-default-arguments

がそれらしいからこれを

```lisp
(setq rust-cargo-default-arguments " -- --test-threads=1")
```

とすると、CLIとおなじように、テストが成功するようになった。
