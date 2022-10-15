---
title: "ログ(休日やっていき)"
description:
date: 2022-10-15
draft: false
categories:
  - "drepo"
tags:
  - "infra"
  - "typescript"
  - "web"
  - "css"
---

# インフラ

ドトールでwifiつないてvpnつなぐと一部サイトでエラーがおきる。

この問題は去年くらいからArch端末でずっと発生してきた問題。

## 発生している問題

* 一部Webページがみれない(ブラウザのみ？)

* sshがつながらない

## 調査内容

### wireshark-qtでパケットの確認

結論をいえば、だからなんだとなった。

パケットをみてもなにがなにやらわからなかった。

せいぜい、dupなんとかが発生しまくってるくらいしかわからなかった。

自分自身に勉強不足をつきつけただけだ。

## 次になにをするか

1. 自宅NWを介さない接続の上でwireguard経由で接続するとどうなるか
2. 1.のとき、パケットはどうなっているか

# はてぶぱくり

Webページ制作の練習のためにはてぶをぱくることにした。

最初はアイコンとかぱくってたけど、さすがにまずそうなので

見た目、レイアウトはぱくりつつ、あいこんとかはほかで置換することにした。

その結果。

[GitHub - wasuken/hatebu-pakuri-failed](https://github.com/wasuken/hatebu-pakuri-failed)

しんだよね。

きをとりなおして。

## やること

* Atomic Design
* styled-components

## やらないこと

* まともなTypeScript
* 途中でなげだすこと
