---
layout: post
pubdate: "2013-01-03T18:52:36+09:00"
title: Kindle Fire HD をさわった
tags: [misc]
minutes: 45
pagetype: posts
---
[Kindle Fire HD][kindle-fire-hd-16gb] をさわった。きっかけは、正月に Joshin で母が Kindle Fire HD 16 GB を即決 15,800 円の定価で買ってきたことだ。

母は機械に弱い。家の PC はすべてぼくが触っているし、家電の類もほとんどぼくが触っている。たぶん、どの家庭もこんななんだろうなと思う。その母いわく「大きいの(タブレット)から入って、小さいの(スマートフォン)にするんだ。ガラパゴスケータイを卒業するんだ」とのこと。好きにしてくれ。ガラパゴスケータイと省略せずに呼んでいる人をぼくは母以外に見たことがない。

そんな背景があるわけで、自然ななりゆきとして、ぼくが Kindle Fire HD をさわることになった。要約すると、「母が Kindle Fire HD を買ってきたが使いかたを分かっていない。教えるためにぼくがまず触る必要がある」ということだ。

とはいえ、教えてほしいと言われても、ぼく自身 Kindle にもタブレットにも経験がない。どうせ感覚で触れるだろうと、適当に触ってみることにした。

どうみても Android タブレットだ。UI は若干違うけれど、Android に違いない。検索してみたところ Android 4.0 ベースの OS らしい。

第一の問題。

15 分もしないうちに不具合に遭遇した。Web への接続ができなくなる。

検索してみたところ、[DHCP の処理が悪いらしい][kindle-dhcp]。厳密には Kindle Fire HD 自体は標準に準拠しているようで、ルーター側などがいけないらしいが、ぼくの Pocket Wifi (GL01P) からつながらないので、論外である。

リンク先にあるように設定を変えて、固定 IP にしたところ発生しなくなった。ひどい現象である。たぶん、母などの機械に弱い人が触ったら、ここで Kindle Fire HD は文鎮になるだろう。あるいは電話会社が儲かるだろう。行列のできるサポートセンターか。

第二の問題。

どうみても Android タブレットなのに、標準のアプリがひとつもない。Android タブレットのくせに、Android の標準アプリ類が使えないのは納得がいかない。

そもそも、ストアアプリが違う。Google Play ストアがない。Amazon 向けのストアばかりだ。常に Amazon のカートを手に持っている気になる。どの画面からでも数回タップすれば Amazon のストアに飛んでしまう。設定したアカウントがぼくのアカウントなので、母が間違えて購入すると非常に困る。

ぼくは携帯が Galaxy S II (docomo SC-02C) なので、いくつかアプリを購入していて、Kindle Fire HD でも使えてしかるべきだと思うのだけれど、このままだと使えなくて大変不満だ。

あきらめて root 権限を奪うことにした。

root 権限を奪ってしまえば、好き勝手にアプリケーションをインストールできる。そうすれば、Google Play ストアだってらくらくだ。

検索してみたところ、やはり対応している人が居た。『[Kindle Fire HDでGoogle Playストアを使う方法][android-kindle-fire-hd]』にしたがってぼくも対応した。

これで保障対象外になってしまったけど、どうせ Amazon のサポートなんてしれているので不要だ。

さて、ざっと気が付く不満点が解決したので、のんびり使っていこうかな。活用法なんかを探していきたいな。

45 min.

[kindle-fire-hd-16gb]: http://amazon.jp/o/ASIN/B008UAAE44/bouzuya-22
[kindle-dhcp]: http://www.landerblue.co.jp/blog/?p=4918
[android-kindle-fire-hd]: http://androidlover.net/tablet/amazon-kindle-fire-hd/install-google-play-store.html
