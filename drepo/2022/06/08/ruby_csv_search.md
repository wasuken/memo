---
title: "RubyによるCSV検索チューニング_ファイルインデックス修正.md"
description:
date: 2022-06-08
draft: false
categories:
  - "drepo"
tags:
  - "ruby"
  - "csv"
  - "index"
---

[linear_search module -&gt; class · wasuken/simple-csv-search@11fb776 · GitHub](https://github.com/wasuken/simple-csv-search/commit/11fb776fa4b907140ed039d0cb049e08868b8b5a)

大まかな修正としては

* module -> class
* Fileインデックスに行を直接書き込み -> CSV読まなくてもいいので結果的に早くなる。
  * 更新を考慮していない。

## 調査とか

```shell
wc -l db.csv
10552 db.csv
```

１万行程度のCSVで検証。

```ruby
require "csv"

rst = []
CSV.foreach("./db.csv", header: true) do |row|
  if rst["title"]
    rst << row
  end
end
```

```shell
% time ruby test.rb

________________________________________________________
Executed in    2.65 secs    fish           external
   usr time    2.47 secs    1.70 millis    2.46 secs
   sys time    0.14 secs    0.68 millis    0.14 secs
```

適当に調べたけどやはり全読み込みは遅い。

もっと大きいCSVで検証してみたい。

分割してデータアクセスすれば早そう

### 3000

```shell
% time ruby test.rb

________________________________________________________
Executed in    1.10 secs      fish           external
   usr time  939.29 millis    1.74 millis  937.55 millis
   sys time  124.87 millis    0.67 millis  124.20 millis


```

### 1000

```shell
% time ruby test.rb

________________________________________________________
Executed in  692.81 millis    fish           external
   usr time  565.85 millis    1.63 millis  564.22 millis
   sys time  105.90 millis    0.00 millis  105.90 millis


```

全部読み込む前提で考えると1000がラインかな。

## 次やること

* DB分割（パーティション的なやつ）

* 分割後のインデックス作成処理
