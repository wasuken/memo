---
title: "テトリス書いてます！"
description:
date: 2022-06-16
draft: false
categories:
  - "drepo"
tags:
  - "tetris"
  - "typescript"
  - "react"
---

[GitHub - wasuken/ts-tetris at dev](https://github.com/wasuken/ts-tetris/tree/dev)

# できてること

* ブロック移動
  * 左
  * 右
  * 下

手動かつバグとりができてない。

# できてないこと

* ブロック移動
  * 左
  * 右
  * 下
* 行消
* 複数色
* テトラミノランダム生成
* 時間(一秒ごとに落としたい)

# 学んだこと

```typescript
export type Rotate = 1 | 2 | 3 | 4;
```

1~4の型とかの定義できる。


あとはなるべくベースの関数,決めてそちら流れるように実装を心がけている。

rotate,moveBlock系は一応守れてる。
