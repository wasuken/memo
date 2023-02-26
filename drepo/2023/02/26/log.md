---
title: "ネスぺ新章卍リベンジャーズ"
description:
date: 2023-02-26
draft: false
categories:
  - "drepo"
tags:
  - "ネスペ"
  - "service"
---

# ネスペ

午後1と午前2を重点的にといていく。

## ICMP

[TCP/IP - ICMP](https://www.infraexpert.com/study/tcpip4.html)

> IPプロトコルの「エラー通知」や「制御メッセージ」を転送するためのプロトコルです。

|タイプ|コード|内容|意味|種類|
|----|-----|---|----|---|
|0  ( Echo Reply )|0|Echo Reply|エコー応答|Query|
|3 (Destination Unreachable)|0|Net Unrechable|宛先ネットワークに到達できない|Error|
||1|Host Unreachable|宛先ホストに到達できない||
||2|Protocol Unreachable|プロトコルに到達できない||
||3|Port Unreachable|ポートに到達できない||
||4|Fragment Needed and DF was Set|パケットの分割が必要であるが 分割禁止フラグ（DF)が 立っているので、パケットを破棄||
||5|Source Route Failed|ソースルーティングが失敗||
||6|Destination Network Unknown|宛先ネットワークが不明||
||7|Destination Host Unkown|宛先ホストが不明||
||8|Source Host Isolated|送信元ホストが使用されていない||
||9|Communication with Destination  Network is Administratively Prohibited|宛先ネットワークとの通信が管理上 禁止されている||
||10|Communication with Destinaltion  Host is Administratively Prohibited|宛先ホストとの通信が管理上 禁止されている||
||11|Destination Network Unreachable for ToS|指定された優先制御値では、 宛先ネットワークに到達できない||
||12|Destination Host Unreachable for ToS|指定された優先制御値では、 宛先ホストに到達できない||
||13|Communication Administratively Prohibited|通信が管理上が禁止されている||
||14|Host Precedence Violation |ホストの優先度が違反している||
||15|Precedence cutoff in effect|優先制御が事実上切断された||
|5 ( Redirect )|0|Redirect Datagram for the Network |ネットワークへの最適経路変更を通知|Error|
||1|Redirect Datagram for the Host |ホストへの最適経路変更を通知||
||2|Redirect Datagram for the ToS and Network|優先制御でネットワークへの最適経路を通知||
||3|Redirect Datagram for the ToS and Host|優先制御時にホストへの最適経路を通知||
|8 ( Echo Request )|0|Echo Request|エコー要求|Query|
||11 ( Time Exceeded )|0|Time to Live exceeded in Transit |転送中にTTLの値が超過した|Error|
||1|Fragment Reassembly Time Exceeded |分割パケットを組み立て中に時間が超過した| Error |


## IEEE802.11無線通信規格特徴一覧

|規格|周波数帯|最大通信速度|
|---|-------|----------|
|IEEE802.11b |2.4GHz |11Mbps|
|IEEE802.11g |2.4GHz |54Mbps|
|IEEE802.11a |5GHz |54Mbps|
|IEEE802.11n |2.4GHz |600Mbps|
|5GHz|||
|IEEE802.11ac |5GHz |6.9Gbps|
|IEEE802.11ad|60GHz |6.8Gbps|
|IEEE802.11ax |2.4GHz |9.6Gbps|
|5GHz|||

# 100日のあれ

わすれてはいない。。。

voicevoxもコーヒーもだめなので別のプランをさがしていた。

そしてあたらしくつくったのが「がんばリスト」

がんばリストをつくって、今日はこのリストをやるときめて、

その日中にチェックリスト入力する。

そしてカレンダーで日々の努力をふりかえる。

ユーザ認証もできればいれたいね。

[GitHub - wasuken/ganbalist](https://github.com/wasuken/ganbalist)
