---
title: "うそつきワイくんとうそつきワイくん"
description:
date: 2023-10-22
draft: false
categories:
  - "drepo"
tags:
  - "cl-top"
  - "clj-top"
---

# cl-top

header 部分つくっていく。

そこおわったら一旦 close.clj でつくりなおしてみる。

[GitHub - wasuken/cl-top](https://github.com/wasuken/cl-top)

## 工夫したところ

関係ないやつは極力 util.lisp ににがした。

### 取得データの管理

とにかくデータ取得して、テーブルにつっこんだ。

最後のリファクタで set-from-\*系に集約した。

### "->"マクロ

たぶんみんなつかってるか、util 関数にはいってるやつなんだろうけど

```lisp
(defmacro -> (v &rest body)
  (let ((rst '()))
    (loop for x in body
    do (setf rst `(,x ,(if (null rst)
         v
         rst)
          )
       ))
    rst)
  ) ; (macroexpand '(-> a b c d e f)) ; => (F (E (D (C (B A)))))

```

いれ子がみづらかったので実装した。

順番逆になるので、body に reverse いれたほうがいいかも。

まあ今回順序関係ないから無視。

## 工夫できなかったところ

format の引数がくそながいのでマクロ展開しようとおもったが、できなかった。

### parse 祭やら不整合やら

数値とかいちいち変換するのはなーということでよびだすときにひたすら parse だのなんだのしまくってた。

後 cpu 系は数値に変換してたりと矛盾もある。ぬぐぐ

### format にて変数やリストの内容を引数で展開したかった

```lisp
(defmacro hoge (params &rest pparams)
  (format ,@pparams ,@params))
```

みたいなやつで,@params のとこを(mapcar...)で展開できたらなーとおもったけど

わちゃわちゃやって結局できなかった。あきらめて nth 祭かいた。

## 感想

chatgpt のおかげでかなりハードルさがった。

あまえすぎてる感もあるが、その反面進捗ハードルがさがって進捗がだしやすくなるのはよいとおもった。

あー後 set 系で共通化できる箇所二つみつけてしまったのでそこどうにかしたい。

ソートのために出力データ全部つくっちゃってるから、そこをもうすこし最小限にしてみたい。

print,generate 系でファイルをわけたい。

[wasuken/cl-top/src/main.lisp#L270](https://github.com/wasuken/cl-top/blob/main/src/main.lisp#L270C8-L270C28)

[wasuken/cl-top/src/main.lisp#L193](https://github.com/wasuken/cl-top/blob/main/src/main.lisp#L193)

この二つの関数ながすぎる。分割プランおもいつかないけどどうにかしたい。

## 次

リファクタするかも。

次どうしよう。
