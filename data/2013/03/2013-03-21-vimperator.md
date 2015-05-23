---
layout: post
pubdate: "2013-03-21T23:10:27+09:00"
title: Vimperator をそろそろ使う
tags: [vimperator]
minutes: 17
pagetype: posts
---
Firefox を Vim ライクな動きにするアドオン Vimperator 。Firefox に戻ってきて、そろそろ日も経つので環境を整えていこうかと思う。その基盤になるのが、この Vimperator である。もうすこし真剣にこいつと向き合いたい。

Vimperator は JavaScript による機能拡張が可能でやろうと思えば大体のことができる、とぼくは思っている。すごい力を秘めている、と信じている。

Vimperator を自分好みに設定し、機能拡張するのも良いのだけれど、ひとまずどんな標準機能を持っているのかを知ることが必要だろう。

そこで今日はナビゲーションツールバーを消すことにした。ナビゲーションツールバーはロケーションバーや検索ボックスを含むツールバーである。これを消すということは Vimperator を使って検索し、Vimperator を使ってブックマークにアクセスするということである。

これはそんなに難しいことではない。 t キーや o キーで表示される :tabopen や :open はおおよそロケーションバーと同様に動くからだ。検索については[スマートキーワード][firefox-smartkeyword]が効くので検索エンジンやキーワードを設定したブックマークを使って検索ができる。

適当な検索ボックスを右クリックして「この検索にキーワードを設定」を選んでも良いし、ブックマークしたあと URL に`%s`を含めれば、そこがパラメーターに置き換わる。キーワードの設定をすれば簡易な検索エンジンの完成である。

こういう縛りプレイで覚えていくのが一番だと思う。できないこと足りないと思うことを継ぎ足す要領で進めていきたい。

17 min.

[firefox-smartkeyword]: http://support.mozilla.org/ja/kb/スマートキーワード