---
title: "Emacsカスタム(2022/06/05)"
description:
date: 2022-06-05
draft: false
categories:
  - "drepo"
tags:
  - "emacs lisp"
  - "lisp"
  - "emacs lisp"
---


```lisp
(leaf counsel-tramp
  :ensure t
  :require t)

(leaf company-tabnine
  :ensure t
  :require t
  :config
  (setq company-idle-delay 0)
  (setq company-show-numbers t)
  (add-to-list 'company-backends #'company-tabnine))

```

tabnineはVSCodeでお世話になってるので入れた。

counsel-trampはいれただけ、使い方よくわかってない。

あとで消すかも。

ちなみに、company-tabinineは

M-x company-tabnine-install-binary

を実行しとかないと補完周りはエラーで止まるので注意。

あとweb-modeをjs,jsxと紐付けるのやめた。lspがうまく動かんのや。


```lisp

(leaf rjsx-mode
  :ensure t
  :require t
  :config
  (add-hook 'rjsx-mode-hook #'eglot))

(leaf lsp-mode
  :ensure t
  :require t
  :config
  (setq lsp-prefer-flymake nil)
  (setq lsp-rust-server 'rust-analyzer)
  :bind ("C-c h" . lsp-describe-thing-at-point)
  :hook ((php-mode . lsp)
		 (rust-mode . lsp))
  :commands lsp)

```

あとlsp-modeの部分を上記へと変更

lsp-modeのhookからweb-mode消した。
