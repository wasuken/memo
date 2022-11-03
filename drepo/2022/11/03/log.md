---
title: "ログ(linesdkとか)"
description:
date: 2022-11-03
draft: false
categories:
  - "drepo"
tags:
  - "life"
  - "holiday"
  - "line"
  - "phpstats"
  - "report_tools"
  - "doubt"
---

# linesdk内の可変引数に対する疑問

[line-bot-sdk-php/EmojiTextBuilder.php at master · line/line-bot-sdk-php · GitHub](https://github.com/line/line-bot-sdk-php/blob/master/src/LINEBot/MessageBuilder/Text/EmojiTextBuilder.php)

具体的にはこのクラス。

コーディングしている最中に配列でわたせとあったのでそうしたところ、

arrayにはbuild関数なんてないぞとおこられた。

何度も引数を確認して定義をみてようやく解決。

配列を引数展開(...$args)する必要があったんですね。

ここなんで配列じゃなくて可変引数なのかしらべたけど、

他でもfunc\_get\_argsしてるとこみかけたので、

かなり早計ではあるが、ルールなんかなという結論に着地させた。

他人にきくことは現状できないので、長い目での解決を期待する(そのためにtagにdoubtをいれた)。

# phpstats

[GitHub - i582/phpstats: CLI Statistics and dependency graphs for PHP](https://github.com/i582/phpstats)

クラス間の関係とかをグラフ化するツールはあっても、関数までとなるとなかったが、

つい先日みつけることができた。

ただ、対話的なインタフェースなので、自動的にそこそこ多くのグラフをつくるのはだるそう。

dephpendもそこそこよさそうだったのでいつかつかう。

# report_tool

毎回名前コロコロかわってるな。

* headerを追加する関数を追加し、週報、月報に適用。
* clear: output_dirを全部削除 -> 各種ディレクトリごとに削除

# pakuri

abcnews?のレイアウトまねるやつそろそろやる。

# gquest

いい加減完成させようよ!!

ガキじゃないんだからさぁ!!!!!!
