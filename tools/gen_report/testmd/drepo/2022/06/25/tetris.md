---
title: "tetris進捗"
description:
date: 2022-06-25
draft: false
categories:
  - "drepo"
tags:
  - "tetris"
  - "typescript"
  - "react"
---

テトリスのマップ上というより回転についてずっと考えていた。


軸が重要な気がする。

[テトリミノの回転 | テトリスアルゴリズム | ActionScript | バンブーサテライツ](http://www.bamboo-satellites.com/as/tetris/tetris04.html)

ココらへん見ながらメモしてみた。

```
xxxxx
xxxxx
xxzxx
xooxx
xoxxx
```

x: 空白
o: ブロック
z: さっき出した軸。ブロックでもある。

zは動かさない。

oはzをもとに回転を入れる。

zは(2, 2)

zを除いたoの座標は

(3, 1), (3, 2), (4, 1)

となる。

zを中心に回転してみると

```
xxxxx
xxxxx
xxzox
xxxoo
xxxxx
```

となる。ここで仮定の話なのでnohaはみ出る無視する。

(3, 1)は(3, 3)

(3, 2)は(2, 3)

(4, 1)は(3, 4)

(2, 3), (3, 3), (3, 4)

```
xxxox
xxoox
xxzxx
xxxxx
xxxxx
```

(2, 3) => (1, 2)

(3, 3) => (1, 3)

(3, 4) => (0, 3)

(1, 2), (1, 3), (0, 3)

```
xxxxx
ooxxx
xozxx
xxxxx
xxxxx

```

(1, 2) => (2, 1)

(1, 3) => (1, 1)

(0, 3) => (1, 0)

(2, 1), (1, 1), (1, 0)

```
xxxxx
xxxxx
xxzxx
xooxx
xoxxx
```

---

# 座標について

マップ上から取得した座標を素直に利用すると回転機能の実装が難しくなる。

なのでzとの相対位置で計算した。

そして計算後に絶対位置へ戻した。

そこのかんたんなテストまで書いた。
