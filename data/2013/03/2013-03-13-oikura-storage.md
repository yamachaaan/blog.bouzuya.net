---
layout: post
pubdate: "2013-03-13T23:59:59+09:00"
title: oikura で DB を読み書きする準備
tags: [clojure]
minutes: 3
pagetype: posts
---
oikura で DB を読み書きする準備をしている。とりあえず固定で delete して insert するようにしてテストだけど書いてみた。あとは今日検証したことを活かしてラッパーを書こう。必要なのは……

- 指定された商品の指定された日付の金額を設定
- 指定された商品の指定された日付の金額を取得
- 指定された商品の金額の一覧を取得
- 商品の一覧に追加
- 商品の一覧を取得

これくらいかな。これだけできれば、ぼくのやりたいことができそう。

3 min.