---
title: "Rubyクラス抽象化"
description:
date: 2022-06-05
draft: false
categories:
  - "programming"
tags:
  - "ruby"
  - "class"
  - "module"
---

nクラスの抽象化

ベースクラスと関数をmoduleを作成、

そのままモジュール化したけど、クラスにいれてもよかったもしれない。

```ruby

module Test

class Base
end
class A < Base
end
class B < Base
end



```
