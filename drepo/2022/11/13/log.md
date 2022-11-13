---
title: "データベース実装とか"
description:
date: 2022-11-13
draft: false
categories:
  - "drepo"
tags:
  - "Database"
  - "RDBMS"
  - "Lisp"
---

# RDBMS実装

## 細分化

ここまでいままでで4回くらいやってる。なお

[Architecture of SQLite](https://www.sqlite.org/arch.html)

sqliteパクろう。

* sql

  * tokenizer
  * parser
  * code generator

* virtual machine?

* b-tree
* pager

## 一つ一つつくろう

まずは全体のながれの確認。

```sql
select * from hoge
where x = 'aaaa'
and y = 'bbbb'
order by x;
```

プログラムはこれをどう解釈するのだろう。

table('hoge')
	.select(col_ptn(table('hoge').columns), '*')
	.where(x, '=', "'aaaa'")
	.where(x, '=', "'bbbb'")
	.orderby('x')

こうかな。だから

table: hoge
select: *
where: x, =, 'aaaa'
and: y, =, 'bbbb'
orderby: x

こういった情報を取得すればいいってことかな。

まずはrubyでバックエンドでうけつける関数を作成しよう。

# Lisp実装

写経しただけ。

[((Rubyで) 書く (Lisp) インタプリタ)](https://melborne.github.io/2010/11/10/Ruby-Lisp/)

defineまでは動作してるっぽい。

次もこちらの続きをば。
