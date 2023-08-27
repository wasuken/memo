---
title: "進捗"
description:
date: 2023-08-27
draft: false
categories:
  - "drepo"
tags:
  - "shabedabe"
  - "emacs"
---

# shabedabe

ws で動作するようにしてみたけど、うごかない。

がちゃがちゃしてたら 22:00 くらいまでには相手には送信してくれるようになってた。

# emacs

buffer を縦わりで表示してたけど、やっぱ横わりにしたいなーってときにつかうコマンド。

```lisp

(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
       (next-win-buffer (window-buffer (next-window)))
       (this-win-edges (window-edges (selected-window)))
       (next-win-edges (window-edges (next-window)))
       (this-win-2nd (not (and (<= (car this-win-edges)
           (car next-win-edges))
             (<= (cadr this-win-edges)
           (cadr next-win-edges)))))
       (splitter
        (if (= (car this-win-edges)
         (car (window-edges (next-window))))
      'split-window-horizontally
    'split-window-vertically)))
  (delete-other-windows)
  (let ((first-win (selected-window)))
    (funcall splitter)
    (if this-win-2nd (other-window 1))
    (set-window-buffer (selected-window) this-win-buffer)
    (set-window-buffer (next-window) next-win-buffer)
    (select-window first-win)
    (if this-win-2nd (other-window 1))))))

(global-set-key (kbd "C-x t s") 'toggle-window-split)

```

ChatGPT で生成した。便利ぃ。
