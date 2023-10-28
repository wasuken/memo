---
title: "進捗"
description:
date: 2023-10-28
draft: false
categories:
  - "drepo"
tags:
  - "next.js"
  - "cron"
---

# request-cache

データあつめようとおもったら、定期的に API たたいてあつめるのが単純な手段の一つだけど、

とにかくわすれるので自動化したい。

外部サービスでもいいんだけど、ストレージ面がきついからなるべく自宅のサーバ内部に配置したい。

というわけで自作の簡易的なサービスをつくろうということでできたのがこちら。

next.js, css module, typescript のいつもどおりのメンツ。

こちらに cron をくみこんで、queue っぽいテーブルを用意してあとはくるくるまわすだけ!

んで今時点(2023/10/28 16:50 くらい時点)では表示部分についてはエラー処理をのぞいてだいたいできた。

かなりよっぱらいながらコードかいてて、さすがにきっついので続きは明日か、おきてたらやるわ。

[GitHub - wasuken/request-cache](https://github.com/wasuken/request-cache)

れどめにだいたいの想定かいといた。

これで不具合おこすなら考えなおす。
