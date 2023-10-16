---
title: "cl-topつづき"
description:
date: 2023-10-16
draft: false
categories:
  - "drepo"
tags:
  - "cl-top"
---

# cl-top

単純に表示だけのとこを実装。

しかし幅があわず、一時間ほどなやんだ。

statu から取得してた Uid が 0 0 0 0 みたいなタブ区切りのフォーマットで、そこをパースしてなかったのが原因だった。

なんか Lisp を Lisp としてつかいこなせてないきがする。

かといって macro 乱立もちがう。CLOS もうすこしつかったほうがいいか？
