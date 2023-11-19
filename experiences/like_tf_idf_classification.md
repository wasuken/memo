---
title: "tf-idfっぽいテキスト分類"
description:
date: 2023-11-19
draft: false
categories:
  - "experience"
tags:
  - "text"
  - "python"
  - "tf-idf"
---

# tf-idf

[tf-idf についてざっくりまとめ\_理論編 | DevelopersIO](https://dev.classmethod.jp/articles/yoshim_2017ad_tfidf_1-2/)

# 今回おもいついたやつ

上位何件とかの部分はアルゴリズムは改良の余地があるためあんまりかたまってないので抽象化する。

1. 収集したテキスト全部の形態素と出現カウント(自分は一記事につき一にした)の辞書を用意する。
2. 辞書の上位 N 件を共通辞書として定義
3. 記事ごと形態素分解し、記事内の出現数上位 N 件を選択。ここで**共通辞書に存在する単語はとばして選択**する。

これだけ。なにか大きな欠点があるのかもしれないし、既出かもしれない。

今は Python 内部で完結させてるから、次はこれを PostgreSQL に展開してみたりしたいね。

不定期でもこれの改良をがんばってみたいね。

# 学び

ようわすれるから書いておぼえることにしたわよ。

## 辞書のソート

dict のソート(Value が比較可能である場合)

```python
sorted(dict_v.item(), key=lambda x: x[1], reverse=True)
```

## ファイルに書き込みたい

```python
with open(fpath, mode="w") as f:
  ...
```

# 参考 URL

[【python】辞書(dict)のソート方法【sorted 関数、降順、lambda、文字列】](https://python-academia.com/dict-sort/)
