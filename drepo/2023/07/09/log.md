---
title: "うすっぺらぺらのぺらぺらそーす"
description:
date: 2023-07-09
draft: false
categories:
  - "drepo"
tags:
  - "nvox"
  - "prisma"
---

# prisma

## selectで関連テーブルのデータも参照したい

[Prismaでリレーション先のデータもSELECTしたい場合のパラメータ覚書 | WP-kyoto](https://wp-kyoto.net/prisma-select-relational-table-data/)

上みて解決したよ。

カラムを部分的に取得したいときには

```typescript
const poyo = ...
const id = ...
...findMany({
	select: {
		poyo: true,
		hoge: {
			id: true,
		}
	},
	where: {
		poyo: poyo,
		hoge: {
			id: id,
		}
	}
})
```

こんなかんじ。

俺のかきかたとしてお世話になるのはほぼselectになりそう。

# [mui]modalつかう

[React Modal component - Material UI](https://mui.com/material-ui/react-modal/)

modalの中にmodalみたいなことも簡単にできるみたいだ。

# [mui]icon

[React Icon Component - Material UI](https://mui.com/material-ui/icons/)

color="primary"

みたいなかんじで色を変更できる。

後俺はすでにやってたけど、パッケージのインストールは事前におこなう必要がある。

```bash
$ npm install @mui/icons-material
```

[Material Icons - Material UI](https://mui.com/material-ui/material-icons/)

ちなみにここで検索できる。
