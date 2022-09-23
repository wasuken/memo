---
title: "ログ"
description:
date: 2022-09-22
draft: false
categories:
  - "drepo"
tags:
  - "log"
---

# swayのcapslockをctrlとして認識するように修正

[Caps Lock behavior under Sway / Wayland - SOF](https://unix.stackexchange.com/questions/504698/caps-lock-behavior-under-sway-wayland)

こちらをconfigに書いたらそのとおりになった。

# 記事: [Reactで作るアナログ時計](https://www.webcreatorbox.com/tech/react-analogue-clock)

このuseEffectでinterval構うやつは無限に設定してしまったりはしたことある。

この記事が正解なのかわからないので調べてみた。

[useIntervalの一例](https://github.com/streamich/react-use/blob/master/src/useInterval.ts)

結構処理周りで序盤にバグ踏むのも嫌なので自分が次対応するときは

自分の過去のコードよりも上記を持ってきて運用したい。
