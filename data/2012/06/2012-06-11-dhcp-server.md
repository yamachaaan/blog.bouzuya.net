---
layout: post
pubdate: "2012-06-11T22:22:01+09:00"
title: DHCPサーバーを立てた
tags: [misc]
minutes: 33
pagetype: posts
---
自宅のLANにDHCPサーバーを立てた。

我が家のLANは固定IPアドレスにしている。DNSサーバーを立てて名前を設定しているとは言え、IPアドレスは固定の方が余計な問題を抱えなくて済むと考えているからだ。

これが最近問題になってきた。以前は個々の端末ごとにIPアドレスなどを設定していた。端末の台数が少ないときはそれで十分だったのだけれど、最近はことあるごとにVirtualBox上にゲストOSを作成するものだから端末が多くなってしまい、煩雑になってしまった。端末が増えるごとに設定しないといけないし、わずらわしい単調作業である。

この問題を解決するためにDHCPサーバーにより設定を一元管理することにした。MACアドレスに対して特定のIPアドレスを設定できるし、デフォルトゲートウェイなどのその他のネットワーク設定についても簡単に設定できる。個々の端末で作業するより、サーバーですべてを管理できる方がずっと楽だ。楽できることは良いことだ。

DHCPサーバー機能はふつうのルーターなら備えている。しかし、今回はあえて自分でDHCPサーバーを立てることにした。ルーターを変更しても設定をしなおす必要がなくなるし、勉強にもなる。一度でも良いので自分で立てておいた方が良い。経験は自信につながる。DNS/NTP/GIT/HTTP/CI/SSH...。

`sudo apt-get install isc-dhcp-server`を実行して、`dhcpd.conf`を適当に変更して完了。思ったより簡単だった。むしろ既に固定IPアドレスが設定されている各端末をDHCPを使って動的に取得するように設定しなおす方が大変だった。

持ち運びしているノートパソコンを家に戻るたびに固定IPアドレスに変更していたが、そんなバカなことをしなくて済むようになった。[resolvconfを使う](http://bouzuya.github.com/2012/06/04/resolvconf.html)よりもDHCPサーバーを適切に設定する方がずっと良いことが分かった。

良い経験ができた。

33 min.