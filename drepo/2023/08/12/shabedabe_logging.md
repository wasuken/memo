---
title: "shabedabeのロギングについて考える"
description:
date: 2023-08-12
draft: false
categories:
  - "drepo"
tags:
  - "shabedabe"
  - "logging"
---

# mngtableロギング

> 別口で転送なりして、そっちで管理する。Mapを全部ファイル化して、転送して、転送先で表示とか分析をおこなう。

のロギング部分をすこし考察する。

## だれが

system

## いつ、どこで

HTTP request時

## なにを

clientからのrequestデータとsystem側の情報

### client

- ip address
- X-TOKEN
- user agent

### system

- roomId

## どのように(フォーマットとか？)

ip_address,

## どうする

/log/下へかきこむ
