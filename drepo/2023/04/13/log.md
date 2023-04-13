---
title: "ネスペ前です"
description:
date: 2023-04-13
draft: false
categories:
  - "drepo"
tags:
  - "ネスペ"
  - "CTF"
---

おれはいま、「詳解セキュリティコンテスト」をみてる

# SQLインジェクションの種類

型とかはじめてしった。

## Union

```sql
' union select * from <ほしいテーブル名>
```

をパラメタにしこむだけでほしいテーブルが雑にでもてにはいる。

当然アクセスコントロールがしっかりしていれば失敗するといわれるとそうだけど、強力だ。

## Error

エラー結果を返却するようなプログラムを想定している？

エラーがおきるSQLを注入してわざとエラーをおこす。

エラー部分にたとえばselect文を配置しておくと、そのまま解釈された結果が表示されることがあるらしい。

## Boolean

```sql
select col1 from hoge where colb = '<parameter>';
```

みたいなとき、col1しか参照されないのだが、別テーブルuser.passwordを参照したい。どうするか。

```
hoge' or 1=if(select ascii(substr(password,1,1)) from user)
```

と入力する。

hogeはなんでもいいけど一致しないとそこそこ確証があるような文字列を指定。

1=if以降が最初の一文字を指定するロジックになってる。

そしてこれらをくりかえして一致したら一文字目が判明する。

それ以降もくりかえすと最終的に全体像がみえるという仕組みだ。

だからブルートフォースは必須。

## Time

Booleanの結果が真偽にたいして、こっちは最後にsleepをしこんで、応答時間で判定する。

# XXE

XML External Entity

[XXE攻撃 基本編 | MBSD Blog](https://www.mbsd.jp/blog/20171130.html)

XMLには内部への参照を記述することができるらしく、これをパーサにつっこむと

最悪/etc/passwdの中身を返却することもあるらしい(サンプルにあった)。
