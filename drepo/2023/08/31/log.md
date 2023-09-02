---
title: "ねむい"
description:
date: 2023-08-31
draft: false
categories:
  - "drepo"
tags:
  - "shabedabe"
  - "db"
  - "logger"
---

# shabedabe

Redis のデータを定期的にファイルへ退避する。

というわけで winston をつかって Logger クラスをつくってみる

## winston

[TypeScript でロギングするために winston を導入してみる - Qiita](https://qiita.com/18kondo/items/3d5738a1c2eacd83d4f4)

使い方はすこしわかった。

次はログを取得、保管する目的を確認しよう。

たぶんいくつかある。

## 1. 不具合、バグの検証時に役にたてるため

### 必要な情報

- エラーハンドリング

## 2. チャットデータの推移

### 必要な情報

- IRoom
- いつ取得したか(Date)

## 3. 攻撃の検知と防衛

- HTTP Request
- HTTP Response
- User Data(useragent, ipaddr)、つまり HTTP Request Header,TCP,IP の送信元情報。
