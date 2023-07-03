---
title: "whisperつかってみた"
description:
date: 2023-07-02
draft: false
categories:
  - "drepo"
tags:
  - "whisper.cpp"
  - "nvox"
---

# whisper.cpp

[GitHub - ggerganov/whisper.cpp: Port of OpenAI&#39;s Whisper model in C/C++](https://github.com/ggerganov/whisper.cpp)

これを家に半分くらいニートしてたPCでうごかしてみた。

まず、モデルのダウンロードをおこなう。まあおためしやしmediumつかうわ

```bash
$ ./models/download-ggml-model.sh medium
```

なお、wavファイルのフォーマットが16kHzじゃないとおこられたので変換を事前におこなっておく。

```bash
$ ffmpeg -i input.wav -acodec pcm_s16le -ac 1 -ar 16000 output.wav
```

実行。

```bash
$ ./main -m models/ggml-medium.bin -f ~/hoge.wav -l ja -txt -of ~/result
```

ちなみにドキュメントみおとしてたかもしれないが、

-ofにresult.txtとつけてたらresult.txt.txtになってたので拡張子はいらんっぽい。

# nvox

細々とやっとります。

## pagesにベタ書き -> componentとして作成 -> pages修正

これが俺の最新の折衷案。

うごくとこまではとにかく感覚でやる。

うごいたら即component化して、pagesからうつしたコード全般けして、参照するようにする。

## ts react

無限にわすれる。

[【React×TypeScript】イベントハンドラの型 - Qiita](https://qiita.com/y-suzu/items/9e9a243aaded5952834a)

```typescript
const [query, setQuery] = useState<strin>();
const handleChange = (e: React.ChangeEvent<HTMLInputElement>){   // <- これ
}
return (
<input value={query} onChange={handleChange}  />
)

```

button

[【TypeScript】Reactでのイベントに設定する型の理解が少しだけ深まる | アールエフェクト](https://reffect.co.jp/react/react-typescript-event/)

React.MouseEvent<HTMLButtonElement, MouseEvent>

ただ、buttonはだいたい省略するからそこまで困らない。

## flex-direction

flexで縦にしたい。

flex-direction: column;

よくわすれる。

[flex-direction - CSS: カスケーディングスタイルシート | MDN](https://developer.mozilla.org/ja/docs/Web/CSS/flex-direction)

## next.jsでmuiのセットアップ

ほぼreactやが

[Next.jsにMaterial UIを組み込んだ環境を作る](https://zenn.dev/ttani/articles/next-materialui-setup)

基本的に上。

[Next.jsに新しくなったMUI(Material-UI v5)とEmotionを導入して新機能を試す | ZUMA Lab](https://zuma-lab.com/posts/next-mui-emotion-settings)

上もemotionとかstyledのつかいかたしるためにみた。

俺はemotionよりstyledのがなれてた？からstyledつかった。なんかObjectっぽいかきかたになってたけど。

## [mui]slider

[React Slider component - Material UI](https://mui.com/material-ui/react-slider/)

サンプルコードのままにページングリストのコンポーネントつくった。

今回は挑戦的?でページングをこのsliderでやろうというわけだ。

サンプルコードどおりかいたのでそのとおりの動作はしてくれた。

後必要な機能としては

- defaultPageをpropsで指定できるように
- bookmarkIndexでしるしをつけたい。なんならdefaultPageいらないからこっちほしい。
