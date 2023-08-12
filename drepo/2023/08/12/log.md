---
title: "ががががが"
description:
date: 2023-08-12
draft: false
categories:
  - "drepo"
tags:
  - "shabedabe"
---

# shabedabe

たぶんすこし満足してしまった。まだリリースしてないのにな。

## Manage分離案

当ファイル現在300行程度だが、役割が多すぎるので、いずれは分離していきたい。

が、一見すべてが密結合しているようにみえるため、具体的な改善案がおもいつかない。

## [アイデアからの実装]lock機能

別プロセスでtokenと通信中はAPI返却をおこなわない。

これやってみるか。

## アイデアスタック

- botとの会話: ただし高度なものではなく、ニュースや占いを行う程度。
- 話題box: 話題を提供してくれる。random.
- ~~lock機能: 別プロセスでtokenと通信中はAPI返却をおこなわない。~~本日実装
- mngtableログインページ化: reactでフロントかいて、認証ふくめてバックエンドつくりなおす。
- mngtableロギング: 別口で転送なりして、そっちで管理する。Mapを全部ファイル化して、転送して、転送先で表示とか分析をおこなう。
- heartbeat: headかなんかで通信つづけて、roomのlifetimeを更新していく。lifetimeをこえたらけす。


## room lock

実装した。

いろいろ考えたが、

```javascript
#lockRoom
処理
#unlockRoom
```

みたいなやつにした。

## 話題box

> 話題を提供してくれる。random.

systemが話題を提供するのではなく、話題ほしいとリクエストしたuserのチャットということにしよう。

typeの追加かな、いや、infoをつかうか？

## チャット自体のlock、waitタイム？

APIリクエストで秒間でものすごい数リクエストをおくられるのはこまるのでwait timeでも設けるか？

まず、秒間リクエストについては、先程実装したlockでどうにかなるとおもう。

しかし、ユーザーによる連投はどうしようもないきがする。

ブラックリストとかどうつくろうか。

もしくは、ルーム作成時に面接とかするか？

質問表をつくって、2-4択にして、用意した正答表と比較して、正答率N%以上ならはいれるみたいな。

部屋というより、ユーザー自体が用意させるとか。

# memo

ねむいのでねる

shabedabeのコードかいてた。

話題BOXの実装にはいってる。

APIたぶんできてて、あとはフロント

APIたたいて、表示する部分。