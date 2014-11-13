---
layout: post
title: "Jekyll : Related Post"
date: 2014-11-13 15:07:20 +0700
comments: true
categories: jekyll
tags: jekyll
thumbnail:
---
Jadi idenya adalah saya ingin menampilkan *related post* di blog ini. Akan tetapi Github tidak mengizinkan untuk memasang plugin jekyll (karena masalah keamanan). Alhasil saya cari - cari ide lain untuk menampilkan *related post* tanpa menggunakan plugin. Saya sempat kepikiran untuk ngoprek Liquid-nya aja. 

Setelah beberapa kali browsing saya menemukan artikel bagus [disini][artikel]{:target="_blank"}. Ternyata artikel tersebut sudah sesuai dengan kebutuhan saya, yaitu menampilkan post berdasarkan tags. Akhirnya langsung saja saya contek kodenya dan tes teryata bisa berjalan dengan baik di Github. 

Kode yang saya contek ada di file [sidebar.html][gh]{:target=>"_blank"} dan sekarang blog saya sudah menampilkan [related post][post]{:target="_blank"} dengan baik dan benar :)

I Love Jekyll ;)

[gh]: https://github.com/yunanhelmy/yunanhelmy.github.io/blob/master/_includes/sidebar.html
[post]: http://yunanhelmy.github.io/articles/2014/11/07/naruto-epilogue-700/
[artikel]: http://zhangwenli.com/blog/2014/07/15/jekyll-related-posts-without-plugin/
