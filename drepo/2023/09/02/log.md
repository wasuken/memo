---
title: "進捗"
description:
date: 2023-09-02
draft: false
categories:
  - "drepo"
tags:
  - "c"
---

# portscan

C でつくった。

[GitHub - wasuken/portscan](https://github.com/wasuken/portscan)

pthread というマルチスレッド機能？みたいなやつつかってるので高速におわる。

たしか 50 ずつくらいを分割して一つのスレッドで実行させてるとかなんとか

[入門者向け！C 言語でのマルチスレッドをわかりやすく解説 | だえうホームページ](https://daeudaeu.com/multithread/)

今回俺は同期なしのコードをかいた。同期が必須ならもっと苦戦してたんだろうな。

ながれとしては

1. 実行する関数つくる
2. 引数用の構造体つくる
3. 分割周り(create,join)

だったかな。
