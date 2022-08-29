---
title: "停滞考察"
description:
date: 2022-08-29
draft: false
categories:
  - "think"
tags:
  - "mental"
  - "learn"
  - "programmer"
---

ひどい停滞感がここ一年続いている。

マネージャ基部下を持つ歳なのかもしれないが、全くうまく運用できていない。

なぜか。

この分析はすでに固まってて、リストアップするまでもなく一番勢いがあった期間と比べるとわかるはずだ。

おそらく最も勢いのあったのは専門学校卒業間近。

ここから楽しみを理解してこれまで学んできた断片を素材としてアプリを書いていった。

稚拙だったが、ある程度動くところまで行った。

つまり、稚拙ながらも専門学校レベルの学習、インプットを行った上で

興味のある分野へとそれまで学んできたことを成果物として昇華させる。

そんなの当たり前じゃん。現実世界で有名人?がよく発言するインプットとアウトプットとはこの関係なんだ。

ただ勘違いしてた。インプットとアウトプットを高速に行うみたいなのはカスだ。

僕はアウトプットとは日報とかマニュアルといったその辺を指しているのだと思っていた。違う。

それはあくまでもログであり、ドキュメントだ。ドキュメントは結果になることもあるが、

過程の中のドキュメントはそれとは異なるものだった。

# これから

方針としては年単位の継続インプットが何よりの優先となる。

学校のカリキュラム的な学び方はかなりありだと思うので、それを採用する。

おそらく継続的な学習程度であれば週一でもそこそこの効果はあるはずだ。

なので週単位でのカリキュラムを作成してその通りに学習していく至極真っ当な手段でインプットを行う。

そしてどこかの段階で成果物を作成する。故にいくつか作成してみたい成果物を元にカリキュラムを作成する。

これまで通り自然消滅する可能性もありえる。

そこで、見積りに全力を入れてみる。

このドキュメントの中で各種教材を元にスケジュールまで作成する。

# やりたいこと

1. データベースソフト作成
2. コンパイラ作成(Lispを想定)
3. デスぺ合格(時期的に一年半くらい後)
4. ネスペ合格
5. 不動産系のWebサービス(不動産取引価格情報取得APIを利用するやつ)

# 分解

## 1.

* データベース基礎
  データベースの理屈的な部分の学習。
  * 教材: 詳説データベースを利用。
* 採用言語(おそらくGo)
  * 教材: 公式ページ。
* 言語解析
  SQLをパースするため
  * 教材: [低レイヤを知りたい人のためのCコンパイラ作成入門](https://www.sigbus.info/compilerbook)

## 2.

* Lisp構文(Schema)
  * 教材: プログラミングGauche
* 言語解析
  * 教材: [低レイヤを知りたい人のためのCコンパイラ作成入門](https://www.sigbus.info/compilerbook)
* parser combinator
  Common Lispで実装
  * 時間がなさそうなら
  * 教材: [低レイヤを知りたい人のためのCコンパイラ作成入門](https://www.sigbus.info/compilerbook)でできるだろうか。
  * 教材: [実践Common Lisp](https://www.ohmsha.co.jp/book/9784274067211/)

## 3.

* データベース
  * 教材: 詳説データベースを利用。
* 過去問対策
  * 教材: [過去問道場(db)](https://www.db-siken.com/dbkakomon.php)

## 4.

* コンピュータネットワーク
  * 教材:
	  * [ネットワークエンジニアとして](https://www.infraexpert.com/)
	  * [3 Minutes Networking](http://www5e.biglobe.ne.jp/aji/3min/)
* 過去問対策
  * 教材: [過去問道場(nw)](https://www.nw-siken.com/nwkakomon.php)

## 5.

* デザイン
  * 教材: [dash](https://dash.generalassemb.ly/projects)
* React
  * 教材: [チュートリアル](https://ja.reactjs.org/docs/hello-world.html)
* Ruby
  * Rails
	* 教材: [udemy rails5](https://prog-8.com/courses/rails5)

# 教材情報

## 1. 詳説データベース

[O'Reilly Japan - 詳説 データベース](https://www.oreilly.co.jp/books/9784873119540/)

14章

392ページ

## 2. [低レイヤを知りたい人のためのCコンパイラ作成入門](https://www.sigbus.info/compilerbook)

11章(番号はないので強引に付与)

[Commits · sasurau4/9ccs · GitHub](https://github.com/sasurau4/9ccs/commits/master)

他の人を参考にして計算する。

2021/2/5 ~ 5/31

だいたい四ヶ月以内。

波があるので継続すると同じ期間になると想定する。

## 3. プログラミングGauche

27章

webサイトを作ることはない上にボリューム割きたくないので

23まで

[O'Reilly Japan - プログラミングGauche](https://www.oreilly.co.jp/books/9784873113487/)

524ページ。

実装元言語なので別の教材へと変更するかも。

もしくはパパッと終わらせるか、端折る。

## 4. [実践Common Lisp](https://www.ohmsha.co.jp/book/9784274067211/)

32章

512ページ。

## 5. [過去問道場(db)](https://www.db-siken.com/dbkakomon.php)

期間限定のため、試験一ヶ月前とかの括りでひたすら行う感じ。

## 6. [ネットワークエンジニアとして](https://www.infraexpert.com/)

* 初級: 20
* 中級1: 21
* 中級2: 16

= 57

## 7. [3 Minutes Networking](http://www5e.biglobe.ne.jp/aji/3min/)

81 + 22

= 103

## 8. [過去問道場(nw)](https://www.nw-siken.com/nwkakomon.php)

期間限定のため、試験一ヶ月前とかの括りでひたすら行う感じ。

## 9. [dash](https://dash.generalassemb.ly/projects)

Project1~6

= 26

## 10. [reactチュートリアル](https://ja.reactjs.org/docs/hello-world.html)

additional: 22

12章+additional(22)

= 34

## 11. [udemy rails5](https://prog-8.com/courses/rails5)

14章

# 各種1単位人時想定

5,8は除外。

分あまりは切り上げ(17.2 -> 18)

## 1時間未満

* 6: 57 * 20m = 1140m = 19h
* 7: 103 * 10m = 1030m = 18h
* 10: 34 * 20m = 680m = 12h

## 3時間未満

* 1: 2h * 14 = 28h
* 3: 1.5h * 23 = 34.5h
* 11: 2h * 11 = 22h

## 6時間未満

* 2: 120h
* 4: 32 * 3h = 96h
* 9: 6 * 5h = 30h


# 各種ボリューム

## ヘビー

桁が違う。

2,4

## ミドル

3, 9, 1

## ライト

11, 6, 7

## フェザー

10
