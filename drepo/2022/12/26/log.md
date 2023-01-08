---
title: "巨大?ファイルへの対応"
description:
date: 2022-12-26
draft: false
categories:
  - "drepo"
tags:
  - "100days"
  - "wav"
  - "voicevox"
---

# 5日目

## やったこと

rssのitemにはいってるdescription(contentsだっけ？)ではなく、本文を抽出するようにしたことにより、URLのながすぎ問題が発生した。

以後の対応としては1500文字をこえる場合にはrequestを分割するというwavファイルの分割をかんがえてる。

最終的に結合するかどうか、分割ファイル自体はDBに保存するのか等についてはまだ考えがまとまってない。

朝だけではたりなかったので、構想と実装は次回以降。

## 次やること
## 証跡
