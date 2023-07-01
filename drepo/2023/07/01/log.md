---
title: "復帰"
description:
date: 2023-07-01
draft: false
categories:
  - "drepo"
tags:
  - "rust"
---

昨日やりたかったけど、金曜日だったからやめた。

# rust

## File::openでwriteしようとした話

すでに他の人が記事かいてた。

[Rustでエラーが出てないのにファイルに書き出せないときは | κeenのHappy Hacκing Blog](https://keens.github.io/blog/2017/06/13/rustdeera_gadetenainonifairunikakidasenaitokiha/)

結論: File::createでひらけ。

記事にあるとおり、エラーとかでなくてひたすらprintln!デバッグしてた。




# wasulogのdeploy.sh修正した

[commit · wasuken/wasulog@957a447 · GitHub](https://github.com/wasuken/wasulog/commit/957a4471b7bf49db255eb6a2d83c00c64a51ff02)

文章化わすれてた。

前まで移動先でgit操作してたからうごかなかった。

だからpwdで元dirpath記憶しといて、複製後cdでもどってくる処理かいた。
