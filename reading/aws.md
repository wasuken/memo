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

### Secrets Manager

[AWS Secrets Manager を使おう！ #AWS - Qiita](https://qiita.com/hp-Genqiita/items/f93285a6058c64b39f23)

API 経由で取得できるらしいのでベタガキとか.env とかにいれる必要もなくなりそう

### AWS STS

一時的な認証情報の発行ができる。

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

## コンテナ

## ECR

プライベートの Docker hub みたいなやつ。

イメージを保存、共有できる。

## ECS

起動タイプを EC2,Fargate から選択できる。

EC2 を選択するとインスタンスの管理をこちらでおこなう必要がある。

Fargate を選択すると管理しなくてもよくなる。

後述の App Runner とくらべて自由度がたかい反面、煩雑そう。

## App Runner

ECS とくらべてすくない手順でデプロイがおこなえる。

## Fargate

サーバレスでコンテナを起動できるサービス

EC2 みたいに OS のセットアップとかしなくていいのでその部分については手軽に構築可能。

コンテナへのアクセス、docker exec コマンド等ができない。

Elastic IP 等で固定 IP がふれない。

## SQS, MQ

[Amazon MQ と Amazon SQS の違いと選定基準](https://zenn.dev/iwamasa/articles/b5fd0c120ce57a)

SQS はなんでも

MQ はインタンス生成されるため、フォーマットはほぼ固定

RabbitMQ

[RabbitMQ 徹底解説 #RabbitMQ - Qiita](https://qiita.com/haystacker/items/52e2fb7c5903c3f3bbf9)

## EventBridge

外部サービスとの接合点。

IFTTT みたいだ。

## Step Functions

AWS 内部特化した RPA？

ノーコードでワークフローを作成する。いわゆるヴィジュアルプログラミングみたいなことができる。

## API Gateway

API を比較的楽につくれる。

REST,HTTP,WebSocket の三種類作成可能。

プログラムをかく必要は当然あるが、いわゆるインフラ的な部分はほとんど AWS 側がサポートしてくれる。

当然他 AWS サービスとの連携サポートもある。

このサービスを経由して API を構築することにより、API、インフラ、監視等の管理が用意になる。

## AppSync

API Gateway とにてる。

こちらでは Graphql と Pub/Sub API を利用できる。おそらく API Gateway よりそういった部分が特化されてる(推測)。

Pub/Sub API は WebSocket 接続しているクライアントへのデータ発行をおこなえる。

## SES

メール送信 API

大量のメール配信、認証関連の設定を比較的楽に用意できるのが利点。

P196 まで

## QuickSight、Glue

Glue は ETL(Extract(抽出), Transform(変換), Load(かきだし))を担当する。

分析部分は Athena、Redshift でおこなう。

QuickSight が BI ツール。可視化部分を担当する。

[ETL とは？３つの機能とツールの必要性を知ってデータを有効活用！｜ IT トレンド](https://it-trend.jp/etl/article/function)

## Data Pipeline

指定された間隔でおもに AWS のコンピューティング、ストレージサービスにたいして特定の処理を実行するサービス。

[AWS Data Pipeline（データの移動や変換を簡単に自動化）| AWS](https://aws.amazon.com/jp/datapipeline/)

## Code 系

### CodeCommit

バージョン管理

### CodeBuild

ビルドする。Apache maven,Gradle 等の環境を指定して用意することも可能。

### CodeDeploy

Lambda,ECS,EC2 等へデプロイする

### CodePipeline

上記のような流れをまとめる箇所。

## Direct Connect

専用線。

回線速度や暗号化方式等指定可能。

AWS Direct Connect ロケーションまでの線は自分で用意する必要がある。

## DataSync

オンプレデータから AWS へのデータ転送を自動化する。

[特徴 - AWS DataSync | AWS](https://aws.amazon.com/jp/datasync/features/?pg=ln&sec=hs)

専用の転送プロトコルを利用してたりする。

## Amazon Managed Blockchain

ブロックチェーンネットワークごと用意してくれるサービス。

一気につくってくれるフルマネージド型と

フレームワークの選択ができる型がある。

## IoT core

IoT の、

デバイスとサーバ間をとりもつサービス。

実装には SDK をつかう。

[MQTT とは | かもめエンジニアリング](https://kfep.jp/solution/iot-mqtt/mqtt)

## IoT Greengrass

core にちかいが、core が通信部分のみにたいして、

こちらはデバイス内部の実装コードまで管理をおこなう。

## SageMaker

機械学習プラットフォーム。フルマネージド型。

機械学習自体のあれこれを提供する。

jupyter notebook を内包している。

## Recognition

学習済モデルをつかって、動画、画像の分析をおこなうサービス。

## Textract

ざっくりいえば画像からテキストを抽出するサービス

OCR、手書き文字をふくむ画像、PDF 等とけっこう対応してる。

## CloudWatch

ログアラート、分析等。

IAM の次くらいに AWS をつかうなら皆お世話になる？さわることが必須になるサービス。

## CloudFormation

Terraform の AWS 特化版？

IoC

## Compute Optimizer

機械学習で EC2 などの最適なリソース配分をおしえてくれる。

EC2,EBS,Lambda 等は対応しているが、それ以外はけっこう対応していない(Watch,rds)。
