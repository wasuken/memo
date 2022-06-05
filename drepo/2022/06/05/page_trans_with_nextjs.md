---
title: "20220605"
description:
date: 2022-06-05
draft: false
categories:
  - "drepo"
tags:
  - "javascript"
---

## Next.jsでサイト内遷移させたい

### タグを生成する

```javascript
<Link href="/about">
	<a>こちら</a>
</Link>
```


### 関数実行時すぐに遷移する

```javascript
import { useRouter } from 'next/router'

...
const router = useRouter();


...

(url) => {
	router.push(url);
}
...
```

こちらでやりたいことはなんでもできそう。
