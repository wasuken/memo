---
title: "Markdown用のヘッダ生成関数修正(emacslisp文字列操作)"
description:
date: 2022-06-11
draft: false
categories:
  - "drepo"
tags:
  - "emacslisp"
  - "editor"
---

```lisp
(defun format-yaml-lines (items indent)
  (if (car items)
	  (format "%s- \"%s\"
%s" indent (car items) (format-yaml-lines (cdr items) indent))
	""
	)
  )

(defun insert-hugo-header ()
  (interactive)
  (goto-char 0)
  (let* ((ts (format-time-string "%Y-%m-%d"))
		 (title (read-string "title: "))
		 (categories-str (read-string "categories(a,b): "))
		 (tags-str (read-string "tags(a,b): "))
		 (categories (split-string categories-str ","))
		 (tags (mapcar #'string-trim (split-string tags-str ",")))
		)
	(insert
	 (format "---
title: \"%s\"
description:
date: %s
draft: false
categories:
%s
tags:
%s
---
" title ts (format-yaml-lines categories "  ") (format-yaml-lines tags "  ")))
	)
  )


```

カテゴリとタグを入力できるように修正。

最後に空白が入ってしまうのはどうにかする。

```lisp
(defun format-yaml-lines (items indent)
  (string-join (mapcar #'(lambda (x) (format "%s- \"%s\"" indent x)) items) "
"))
```

これでよかったんや。
