---
title: "qiitaとかの分析してる"
description:
date: 2023-10-12
draft: false
categories:
  - "drepo"
tags:
  - "qiita"
  - "blog"
---

# jupyter で mecab つかうとき

自宅 NW のとあるサーバに jupyter たててる。

そこで mecab つかうときだいたいエラーになる。

以下をつかえばちゃんと mecab つかえる

```ipynb
!pip install mecab
!pip install unidic
!python -m unidic download
```

# 評価される記事をかきたい。

なんでかきたいのかは割愛する。

Qiita、Zenn で評価される記事をかく。

1. 人気記事の分析
2. KPI、KGI の定義
3. テーマをきめる
4. 投稿

今は分析フェーズ。

これを各サービスで一回ずつ、つまり月に二回技術記事をかく。

これを達成するためにはここの更新頻度は平気でおとす。

このブログの全世界 0 億人のファンのみんなごめん。
