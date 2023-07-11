---
title: "今日はなにしよう"
description:
date: 2023-07-10
draft: false
categories:
  - "drepo"
tags:
  - "search"
---

nvoxもiboxもおちついちゃったからあたらしいことさがす。

# elfeedいれる

今のEmacs環境にはなかったのでuse-packageとURLを追加。

```lisp
(use-package elfeed
  :ensure t
  :config
  (setq elfeed-feeds
	  '("https://b.hatena.ne.jp/hotentry/it.rss"
	"https://zenn.dev/feed"
	"https://zenn.dev/topics/rust/feed"
	"https://zenn.dev/topics/nextjs/feed"
	"https://zenn.dev/topics/solidjs/feed"
	"https://zenn.dev/topics/react/feed"
	)))
```

# rust/todo

わすれてた。

ひさしぶりに修正。

なんか追加すると別のtodoが削除される不具合がおきてたから調査した。

結論としてはtruncateいれてたことが原因だった。

コピペしてよくわからんままつかってた弊害。こいつほんまに職業プログラマか？

```rust
...
OpenOptions::new()
		.write(true)
		.truncate(true)  // こいつ!
		.append(true)
		.open(path)
...
```

.truncate(true)

公式docこと[OpenOptions in std::fs - Rust](https://doc.rust-lang.org/std/fs/struct.OpenOptions.html#method.truncate)によると

なんかきりつめるみたいだ。

[OpenOptions doesn&#39;t work when append=true and truncate=true on unix platforms · Issue #34347 · rust-lang/rust · GitHub](https://github.com/rust-lang/rust/issues/34347)

一緒につかう想定されてないなこれ。

# FileMode.truncateはじめてしった。

とおもったらこれ.netか。

[ファイルをオープンするときのモードを指定する（FileMode列挙型） | 日経クロステック（xTECH）](https://xtech.nikkei.com/it/article/COLUMN/20070206/260876/)

[【 truncate 】コマンド――ファイルを指定したサイズに変える](https://atmarkit.itmedia.co.jp/ait/articles/1712/01/news017.html)

truncateコマンドもある。sizeを0にきりつめるような動作だから一々filesystemでfileつくる動作しなくていいから

はやいってことか？

書き込みが発生するときに前の内容けしたいときにはいちいち削除とかするよりはこっちのほうがコードとしても

短くなって高速だからいいことづくめってことか。

# updateもされてねえ...
