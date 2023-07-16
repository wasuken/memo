---
title: "めも"
description:
date: 2023-07-16
draft: false
categories:
  - "drepo"
tags:
  - "sst"
  - "news"
---

# 三連休なにつくるか

とくにやりたいこともないからページかコンポーネントつくっておわるか、しかしなにかをはじめたさもあるので企画するかまよってる。

前おもいついたのは、官報からバランスシート取得して、統計をとるとかだけど

ふんわりすぎて話にならない。

方向性はわるくないんじゃないかなーとおもうので動画をみる

[貸借対照表（B/S）はどこをどう見れば良いのか？決算書の読み解き方【基礎編】 - YouTube](https://www.youtube.com/watch?v=4CkQVpDiWIA)

高校で会計をさわさわしてたけどもうわすれたから動画みてる。

前半んなもんしっとるわって内容で半分ねてた。

[【10分で要約】世界一楽しい決算書の読み方｜投資をするなら決算書を理解しよう - YouTube](https://www.youtube.com/watch?v=NgizC-9CFII)

こっちのが役にたった。そしてはやい。

## やりたいこと

分析は自分でやらないといけない

だからPythonだのはたぶんかかない。

逆に分析結果レポートはWebページとして作成するかも。

データ取得、分析まで自分でやって、

その結果をNext.jsかなんかで表現する。

markdownかその拡張でやったほうがいいかも？

というわけで別ファイルでまとめてたときに気がついた。

> (2）提出会社の経営指標等

ここをチャートにして比較してやればよくね？

# 動画

## SST

fireshipみてたらSSTなるものに遭遇した。

[SST in 100 seconds - YouTube](https://www.youtube.com/watch?v=JY_d0vf-rfw)

なんかAWS関連のフレームワーク?

IaCツール？でもnpmでインスコしてた

amplifyとなにがちがうんや。

## [【SSTことはじめ】SST（Serverless Stack）のLive Lambda Devで、ローカルでも動作確認できるAWS Lambda開発を体感してみる - Qiita](https://qiita.com/faable01/items/8df44e4ae96f48db09b0)

IaCツールであり、開発支援、つまりはライブラリやフレームワークみたいに

API操作時に支援してくれるってことかな。

## [21 Awesome Web Features you’re not using yet - YouTube](https://www.youtube.com/watch?v=q1fsBWLpYW4)

興味あるやつだけとりあげる。

### dialog

かなりほしい

今はどこのサービスもだいたい力技でつくってるから

ブラウザでサポートしてもらえるならよりみやすいものになりそう。

### clerk

ログインページつくってくれるサービス？

### popver?

英語わからん

### webgpu

なんかマイクラ表示してた。

よくわからん

### container queries

CSSにcontainer-typeとか追加されてる。

### color mix

CSS

color-mix(in red blue)みたいにまぜることができる？

### CSS Nesting

.hoge {
	.fuga{}
}

いや、ようやくかよ。


### color fonts

### vital extension

???

### Array.at

JS

arr[arr.length -1] => arr.at(-1)

ようやくか

最後から~番目みたいな指定がやりやすくなる。

### deep copy

```javascript
const h = structuredClone(hoee)

```

deep copy用の関数が用意されたみたいだ。

これまで、string[]程度のものならspread構文、

```javascript
{
	hoge:{
		huga: {...}
	}
}
```

みたいな深いオブジェクトは

JSON.parse(JSON.stringify(hoge))みたいなことしてたけど

このstructuredCloneをつかえばよくなるみたいだ。

[structuredClone() - Web API | MDN](https://developer.mozilla.org/ja/docs/Web/API/structuredClone)

### TransformStream

[TransformStream - Web API | MDN](https://developer.mozilla.org/ja/docs/Web/API/TransformStream)

これふとおもったんだが、

今voicevoxでやってる複数ファイルの結合楽にできないか？

[2つのTransformStreamを合成する - Qiita](https://qiita.com/access3151fq/items/90ee323b404ee25d5512)

なんかnodejsではそこそこ前からあるみたいだし、やってみるか。

[JavaScriptのStreams APIで細切れのデータを読み書きする](https://sbfl.net/blog/2018/05/26/javascript-streams-api/)

### View Transitions API

[View Transitions API入門 - 連続性のある画面遷移アニメーションを実現するウェブの新技術 - ICS MEDIA](https://ics.media/entry/230510/)

クリック後、カードっぽい要素が拡大して、

他のならびや表示内容がかわる。

モーダル表示とかこっちのアプローチのほうがいいきがする。

### animation-timeline

[animation-timeline - CSS: カスケーディングスタイルシート | MDN](https://developer.mozilla.org/ja/docs/Web/CSS/animation-timeline)

よくわからなかった。サンプルも動作してなかったから

firefoxサポート外なのかも。

-> サポート外だった。

# [読書] 22歳からの国語力

みてる。

## 今週よんだ本を一分以内で説明する

## 仕事とは自己紹介である

仕事は自己の一部

知識の定着からしてもはりぼてでばれやすい。

言語化がむずかしい。

プログラムがCPU,一次キャッシュ、メモリ、SSDと遠くなるとおそくなる以上に

データが曖昧なものになる、

自分にちかければちかいほど高速にreadできて、詳細な情報が存在する。

いや、readがはやいからその分それ以外のことも余計におこなうことができるから

結果的に詳細になっているのかもしれない。

だから、大事な情報は自己紹介に近づける必要があるんですね。

## 七つの鍵

相手につたえるための七つの鍵

| word    | jp         |
----------|------------
| who     | 誰が         |
| whom    | 誰に         |
| what    | 何を         |
| how     | どのように   |
| when    | いつ         |
| context | どんな文脈で |
| result  | 結果         |
