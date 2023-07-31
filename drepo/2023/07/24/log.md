---
title: "webページかきかき"
description:
date: 2023-07-24
draft: false
categories:
  - "drepo"
tags:
  - "nvox"
  - "ibox"
---


# [react]発火してほしくない裏の要素のクリックイベントがうごいてしまうとき

```javascript
// 一番上にある要素のイベントハンドラ
(e) => {
	e.stopPropagation();
}
```

stopPropagationで以降のイベントが発火しなくなるみたい。

[Event.stopPropagation() - Web API | MDN](https://developer.mozilla.org/ja/docs/Web/API/Event/stopPropagation)

ちなみに俺の場合preventDefaultではだめだった。

[return false;とpreventDefault();とstopPropagation();の違い | cly7796.net](https://cly7796.net/blog/javascript/the-difference-in-the-return-false-and-preventdefault-and-stoppropagation/)

> ページ遷移などのイベントは行うが、親要素へのバブリングは行わない

なるほどな
