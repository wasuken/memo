---
title: "RubyによるCSV検索チューニング_パーティションアプローチ"
description:
date: 2022-06-09
draft: false
categories:
  - "drepo"
tags:
  - "ruby"
  - "csv"
  - "index"
  - "partition"
---

[added v2 index search. · wasuken/simple-csv-search@7cdc719 · GitHub](https://github.com/wasuken/simple-csv-search/commit/7cdc7192e0c6de63be613669c278833fa73bb05d)

```shell
% bundle exec rspec spec/v2_search_spec.rb

Randomized with seed 54798

CSV検索V2
  サンプル検証
	first item title: ジョジョの奇妙な冒険
	items: 7
	first item title:
	items: 0
	first item title: 未来少年コナン
	items: 37
	first item title: 金田一少年の事件簿
	items: 6
	first item title: みんなのうた「何かいいことあるらしい」
	items: 10
	first item title: ジョジョの奇妙な冒険
	items: 7
	first item title:
	items: 0
	first item title: 未来少年コナン
	items: 37
	first item title: 金田一少年の事件簿
	items: 6
	first item title: みんなのうた「何かいいことあるらしい」
	items: 10
    テストデータ検証

Top 1 slowest examples (2.07 seconds, 99.9% of total time):
  CSV検索V2 サンプル検証 テストデータ検証
    2.07 seconds ./spec/v2_search_spec.rb:24

Finished in 2.08 seconds (files took 0.09393 seconds to load)
1 example, 0 failures

Randomized with seed 54798
```

前回記事より、分割するとのことなので分割機能は実装した。

ただまだ改善案は残ってて、

分割ファイルをすべて同時に開いて、同じ歩調で開く処理の方が基本的に早いのかなーという点、

パーティショニングしているので部分ファイルであればソートとかしてみてもよいかも。

あと実装的にはインデックスファイルの名前が他キーで作成した場合、かぶるなと。

## 疑問点、もやもやとか

### 関数共通処理

railsのbefore_action的なやつ

パーティションしてない場合partition関数以外弾くようにしている。

```ruby

if @part_csv_pathes.size <= 0
    raise Exception.new("not partition error")
end

```

これを一つにまとめたい。関数化して関数を一番上に配置しかないのだろうか。

### rspec共通処理

itをループで作成しようとしたら、失敗した。う〜む。

## 次やること

* 部分ファイル同時読み
* 部分ファイルサイズ調整(検証)
