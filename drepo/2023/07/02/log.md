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
