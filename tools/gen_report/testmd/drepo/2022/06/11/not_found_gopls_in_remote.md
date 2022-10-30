---
title: "Tramp先のgoplsが見つからない"
description:
date: 2022-06-11
draft: false
categories:
  - "drepo"
tags:
  - "emacs"
  - "go"
  - "gopls"
---

```lisp
(leaf go-mode
  :ensure t
  :require t
  :config
  (add-hook 'before-save-hook 'gofmt-before-save)
  )

(leaf eglot
  :ensure t
  :require t
  :config
  (add-hook 'ruby-mode-hook #'eglot)
  (add-hook 'go-mode-hook #'eglot)
  )
```

ruby-mode-hookがrjsxの方にあったので移動。

上記だと動かない。確かPATHにねーぞって怒られた。

## 対応

リモートでgoplsのパス調べてそのままフルパス入力した。

zshやbash周りの設定確認したけどしっかり入ってた。
