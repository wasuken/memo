---
title: "ログ(Emacs, skk)"
description:
date: 2022-09-23
draft: false
categories:
  - "drepo"
tags:
  - "log"
  - "emacs"
---

# skk周りの設定を追加

1. fcitx5向けskkのwrapperをinstall


```bash

$ paru -S fcitx5-skk

```

2. Emacsへ設定を追加

```lisp

(leaf skk
  :ensure ddskk
  :custom ((default-input-method . "japanese-skk"))
  :config
  (global-set-key (kbd "<zenkaku-hankaku>") 'skk-mode)
  (leaf ddskk-posframe
    :ensure t
    :global-minor-mode t))


```

tooltipだとかなりみやすい。

## 参考サイト

[ddskk-posframe: ddskkツールチップposframeフロントエンド | Emacs JP](https://emacs-jp.github.io/packages/ddskk-posframe)

# 記事: [トーバルズ氏、Rust導入やM2搭載「MacBook Air」について語る - (page 2) - ZDNet Japan](https://japan.zdnet.com/article/35193521/2/)

Rustやりたいとおもった。

おきもちについてはdiaryの方でかく。

# tabinineきった

```lisp
;; (leaf company-tabnine
;;   :ensure t
;;   :require t
;;   :config
;;   (setq company-idle-delay 1)
;;   (setq company-show-numbers t)
;;   (add-to-list 'company-backends #'company-tabnine)
;;   )

```

ばいなりいんすこしても文句でつづけたからきった。
