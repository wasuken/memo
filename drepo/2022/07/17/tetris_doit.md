---
title: "テトリスがんばるぞい"
description:
date: 2022-07-17
draft: false
categories:
  - "drepo"
tags:
  - "tetris"
  - "typescript"
---

# 二次元配列の罠?

```javascript
const a = [[1,2], [3,4]];
const b = [...a];
```

さて、問題です。

上記はすべてしっかりと値コピーされてるわけないだろでしょうか？

当たり前じゃん....。

ここがしっかりとコピーされていると錯覚していて、一週間悩んだよね。アホ。

```javascript
const a = [[1,2], [3,4]];
const b = JSON.parse(JSON.stringify(a));
```

これもなんかよくなさそうだけど、動いているからヨシ！
