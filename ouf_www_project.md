---
title: "ouf_www"
date: 2022-1-3T10:00:00+08:00
draft: false
---
# ouf_www



オフ会管理System



* API, Frontの構成で進める。



* 資料関連をなるべく詳細に残すように努める。



## 拡張Plan



### Event権限



* 参加



* Chat送信



* 期間編集



* 削除



* 中止



* 概要編集



* Chat削除



等で権限を設定、Group, Role等にこれらの権限を設定し、



App側もそれにあわせて操作を制限する。



### Event種類



1. 単発Event



通常。



単発を履歴として保存しつつ、読込みたいな機能もよいかも。



2. 定期Event



期間設定するだけで定期的に開催する



3. Event Template



文字通り



4. Event Access Control



* 非login user検索時表示するかどうか



* passwordにて鍵をつけるか



* 認証CodeをもつUser以外参加できない設定



* 参加経験
