---
title: "AWS技術と仕組み"
description:
date: 2023-10-30
draft: false
categories:
  - "reading"
tags:
  - "reading"
---

# reading: aws

読書とはかいているが、読書ではないかもしれない。

なぜなら,これは 1000~3000 字程度の文章を生成するための学習活動にすぎないからだ。

## セキュリティ

最小設定ポイント

- 二段階認証
- SSH IP 制限
- アクセスキーをつかわない
- CloudTrail 有効化: 90 日分の履歴が確認できるみたい
- Config 有効化: リソースの変更履歴確認
- GuardDuty 有効化: 脅威検出。[Amazon GuardDuty（マネージド型脅威検出サービス）| AWS](https://aws.amazon.com/jp/guardduty/)
- Inspector 有効化： 脆弱性診断。[Amazon Inspector（アプリのセキュリティとコンプライアンスの改善をサポート）| AWS](https://aws.amazon.com/jp/inspector/)
- Security Hub 有効化: セキュリティ関連のサービスの情報を統合して、アラートの一元管理とかできる。[AWS Security Hub とは？ - AWS Security Hub](https://docs.aws.amazon.com/ja_jp/securityhub/latest/userguide/what-is-securityhub.html)

## CloudTrail, Config はなにがちがうんだ？

[AWS CloudTrail を使用した AWS Config API コールのログ記録 - AWS Config](https://docs.aws.amazon.com/ja_jp/config/latest/developerguide/log-api-calls.html)

わかりづら...

> まず「AWS Config」と「AWS CloudTrail」の違いについて、おそらく ysatoag さんも理解されてると思いますが
> ・AWS Config … 「AWS リソース」の設定を管理して記録・評価する
> ・AWS CloudTrail … 「AWS ユーザー」の操作を記録する

引用: [助け合いフォーラム - AWS Config と AWS CloudTrail の違い | Ping-t](https://mondai.ping-t.com/g/posts/415)

## DB

### Aurora

Mysql と PostgreSQL と互換性がある。

### Athena

S3 にあるパーティションを指定して CSV,JSON 等をよみこんで SQL クエリで検索できる。

Athena 自体のサーバ的なインフラを用意する必要がないことも利点の一つ。

### Redshift

データウェアハウスサービス。つまり大量データ運用、分析用途。

カラムストア(列指向)データベース

### DynamoDB

インメモリ

## NW

### CloudFront

CDN 目的。世界中のエッジロケーションにキャッシュできる。
