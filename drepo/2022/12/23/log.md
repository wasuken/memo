---
title: "仕事つらい"
description:
date: 2022-12-23
draft: false
categories:
  - "drepo"
tags:
  - "voicevox"
  - "next.js"
---

# そろそろデプロイしたいが...まだできてない

nvoxなにもすすんどらん。なにがしたいかもよくわかってない。。

うむむ

# archlinux update。そしてwifiとの接続がきれる問題

ip aでwirelessデバイスはでてくるんだけど、downしたまま。

最終的な原因は不明だが、rfkill listでみてみるとどうやらsoft blockされてるみたいだったので

rfkill unblock wifiで解決(わか)らせした。
