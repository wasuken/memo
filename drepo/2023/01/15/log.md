---
title: "ciscoルータであそぶやつ"
description:
date: 2023-01-15
draft: false
categories:
  - "drepo"
tags:
  - "network"
  - "cisco"
---

# 自宅NWにあらたに実験NWをつくる

現状メイン、サブというnetworkがある。

メインの下にサブのゲートウェイがある。

実験NWもメインの下に配置する予定。

なお、ゲートウェイはcisco 1812J

## 想定実現方法(画像)

![](nw.png)

## 現状

- private
  - dhcpは設定してる。
  - dhcpからipは取得できてる。
  - ciscoとの通信はできてない

## 想定実現方法(文章)
