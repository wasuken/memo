---
title: "なんもできとらん"
description:
date: 2023-07-17
draft: false
categories:
  - "drepo"
tags:
  - "stat"
  - "corp"
---

# 企業分析

チャートつくるとこ以外は自分で生成する。

# Rustでテトリスっぽいやつつくるハンズオン

[シンプルな落ちものパズルゲーム｜Rustで作るテトリス風ゲーム入門](https://zenn.dev/kumavale/books/30efec2e1d3428/viewer/900eb4)

> CSIシーケンスでは、ESC [ の後に英数字が続きます。RustではESCを16進数の\x1bで表します。
> ここで使用したCSIシーケンスの説明は以下の通りです:

| コード    | 効果                               |
|-----------|------------------------------------|
| \x1b[H    | カーソルを画面の一番左上へ移動する |
| \x1b[2J   | 画面をクリアする                   |
| \x1b[?25h | カーソルを表示にする               |
| \x1b[?25l | カーソルを非表示にする             |

参照: [シンプルな落ちものパズルゲーム｜Rustで作るテトリス風ゲーム入門](https://zenn.dev/kumavale/books/30efec2e1d3428/viewer/900eb4)

これわかってないままCLIツールつくってた...
