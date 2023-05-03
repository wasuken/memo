---
title: "お腹すいた"
description:
date: 2023-05-01
draft: false
categories:
  - "drepo"
tags:
  - "report"
  - "dev"
  - "infra"
  - "homenw"
---

# 自宅インフラ

* routerをラズパイ3から4にかえた

## routerをラズパイ3から4にかえた

dnsmasq,hostapdの設定を複製した。しかしそれだけではたりなかった。

以下、router,wifi access pointの役割をもつラズパイを移行時にみるべきファイルやパッケージ等

1. /etc/dnsmasq.conf
2. /etc/dnsmasq.more.conf
3. /etc/network/interface
4. /etc/hosts
5. bridge構成にしているので、bridge-utilsもインスコする。
6. ufwやiptablesでNATの設定を確認する。

* dnsmasq.more.confはdnsmasq.confでよむように修正をいれる。
* routerになるとhostsで

