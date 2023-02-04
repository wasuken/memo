---
title: "読書メモ"
description:
date: 2023-01-26
draft: false
categories:
  - "drepo"
tags:
  - "reading"
---

# めも

- storybook
- storycap
  - storybookを自動実行して、スナップショットを吐くツール
- reg-cli
  - (記事ではstorycapで生成したやつ)スナップショットを比較して通知をだしたりできるツール
- MSW?
  - [フロントエンドのテストのモックには msw を使うのが最近の流行りらしい](https://zenn.dev/azukiazusa/articles/using-msw-to-mock-frontend-tests)
  - モックサーバらしい


## 1. フロントエンドのテストは、基本的には「不安定さ、壊れやすさとの戦い」

フレーキーテストの方は正直いまのところ考えるつもりはない。

そもそもunit testすらまともにかけてないしな。

> あと、もう1つは、プロダクトコードのほうがどんどんどんどん、いい意味で変わっていく、画面がどんどん変わっていくから、既存のテストコードが失敗してしまう。当たり前ですね。テスト対象が変わったから失敗する。

こっちが重要。PoCとかで仕様がガンガンかわるようなときにどうテストコードとむきあえばいいのかわからん。

コード自体変更が消極的になりそうだし、自分はそもそもテストコードが消極的になってる。


## アクセシビリティ

> アクセシビリティが高い＝テスタビリティも高い

この文脈におけるアクセシビリティってなんだ。