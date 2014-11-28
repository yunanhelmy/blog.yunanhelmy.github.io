---
layout: post
title: "Memasang Gist di Jekyll"
date: 2014-11-28 13:42:48 +0700
comments: true
categories: [jekyll]
tags: [gist, tutorial, jekyll]
thumbnail:
---

Dalam [tulisan][tulis]{:target="_blank"} lain sudah dijelaskan bagaimana memasang / embed Gist di website. Caranya yaitu kita hanya perlu copy embed URL yang sudah disediakan oleh Github. Bagaimana jika kita ingin memasang Gist di blog Jekyll kita? Ada dua cara yang sama yaitu :

* menggunakan embed URL yang sudah disediakan oleh Github
* menggunakan Liquid Tag di Jekyll

ini contoh menggunakan URL :

<script src="https://gist.github.com/yunanhelmy/656d746fc7e1613cbd23.js"></script>

dan yang ini menggunakan Liquid Tag

{% gist 656d746fc7e1613cbd23 %}

Untuk menggunakan Liquid Tag kita memerlukan ID Gist yang akan di pasang. Kita bisa temukan di URL Gist. Contohnya jika kita ingin memasang Gist dengan URL **https://gist.github.com/yunanhelmy/656d746fc7e1613cbd23**, kita gunakan tag

{% gist 4b33e85c796e98e95a88 %}

Tag tersebut akan otomatis ter-render menjadi `<script src="https://gist.github.com/656d746fc7e1613cbd23.js"> </script>` dan menampilkan Gist yang diinginkan.

Cheers !


[tulis]: http://yunanhelmy.github.io/articles/2014/11/28/memasang-gist-di-website/