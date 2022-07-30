---
title: "さめがめ書いたよ"
description:
date: 2022-07-30
draft: false
categories:
  - "drepo"
tags:
  - "samegame"
  - "typescript"
---

書いた。

以下心残り

* 相変わらず綺麗な構成にできなかった。ゴールは見えないけどもやもやだけあるみたいな状態。

* 下つめと左つめの共通化をしたかった。

* テストをかけなかった。

# 工夫した箇所

## 切り詰め処理

[ts-react-samegame/samegame.ts at main · wasuken/ts-react-samegame · GitHub](https://github.com/wasuken/ts-react-samegame/blob/main/src/samegame.ts#L77)

切り詰後または空白を無視して配列を作成しつつ、無視した数と同数の0配列を作成してくっつける処理は我ながら

シンプルでバグが入りにくかったのではと感じた。

## 参照にも頼る

後基本的になりふり構わずに再帰走らせまくっているので、メモ化だるくてグローバルに逃すのもどうなんやろと思ったので

参照だけ持って運用することにした。

mapとかもだいたい参照になった。よいのか悪いのか現時点ではわからんかった。

## 型定義

map, pointをそこそこ明確に型として定義した。

mapはよくわからんが、pointはどちらがどっちかわかりやすくなってよかった。
