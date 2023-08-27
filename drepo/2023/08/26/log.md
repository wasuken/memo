---
title: "進捗ック"
description:
date: 2023-08-26
draft: false
categories:
  - "drepo"
tags:
  - "shabedabe"
---

# shabedabe

ws 化してみた。

それにあわせておおきな変更と方針を決めた

## app -> File から app -> redis -> file へ

ファイルにかきこんでた chat のログとかも redis にいれるようにした。

そしてとじた時点でファイルにかきこんでわすれることにした。

## Log, Debug, Stat クラス追加

予定

Log はロギング関連のクラス

Debug は開発時適当に redis や変数の中身をみるためのクラス。いずれ Stat クラスにきりかえるかも

Stat クラスはまともな Debug ってかんじ。本番だろうと開発だろうとみれるような。

もしかしたらいきなり Stat だけかくかも

フロントは別リポジトリにするかも

そこらへんは未定。

## user のトークン文字列を直接返却しないように

hash 化してかえす。

それをユーザー各々でハッシュ化して比較して自他か判定してねってやる。
