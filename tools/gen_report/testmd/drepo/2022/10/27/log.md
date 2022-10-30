---
title: "ログ(本来の使い方)"
description:
date: 2022-10-27
draft: false
categories:
  - "drepo"
tags:
  - "logging"
  - "network"
  - "cisco"
---

# 検証NW作成

## 現状

* プライベートはDNS+DHCP端末は設定おわり。

## 今日目標

プライベートNWのWebサーバ。
phpとindex.htmlを配置予定。

同じプライベートNWの端末からcurlでみれるとこまで確認したい。

# log

## webの状況確認

```bash
$ sudo systemctl status apache2
```

でみてみるとうごいていたので、インスコはされているらしい。

## 設定ファイル調整

みてみるとrainloopというソフトウェアのディレクトリをみるようになっていたので、

その記述をコメントアウト。

標準ではデフォルトパス(/var/www/html/)をみるようになっていたはずなので、

デフォルトパスのindex.htmlの中身をけしてはろわへと修正。

## private内部他nodeよりcurlにて確認

curlで別端末から確認できた。

次はDMZから
