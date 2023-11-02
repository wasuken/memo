---
title: "OpenAIをつかったノートをつくるアプリ"
description:
date: 2023-06-17
draft: false
categories:
  - "plan"
tags:
  - "app"
---

OpenAIを利用したノートを提供するWebサービス

# 機能

OPENAIの[OpenAI Platform](https://platform.openai.com/docs/api-reference/chat)を利用する。

- openaiとのやりとりが基本
- やりとりと関連するノートを管理する。
  - 自動タグが理想
- 別ノートのコピーをはりつけたいからコピーとか楽にできるようにしたい。

# 見た目

左がチャット欄、右がノート。

# データ構造

id,created_at,updated_atは全テーブルに存在するものとする。

## qa

質問へのAIからの回答。

- question: text
- answer: text

## qa_note

質問へのAIからの回答へのメモ

- qa_id
- contents: text

## qa_note_tags

- qa_note_id
- name

## qa_tags

- qa_id
- name

# 進捗

tauriつかうことにした。

mockみたいなのはいまつくってる。
