---
layout: post
title: "Memasang Gist di Website"
date: 2014-11-28 10:12:49 +0700
comments: true
categories: [gist]
tags: [gist, tutorial]
thumbnail:
---

Kalau kita menggunakan Jekyll pastinya tidak terlepas dari code highlighting. Sebenarnya code highlighting sudah bisa dilakukan di Jekyll. Akan tetapi terkadang kita ingin kode tersebut kalau di ubah (karena kesalahan) maka akan otomatis berubah. Disinilah saatnya kita memasang Gist.

## Apa itu Gist ?

Gist adalah fitur di [Github][github]{:target="_blank"} yang digunakan untuk sharing code / snippet yang bisa di lihat orang lain. Gist merupakan sebuah repository juga, jadi mengikuti behaviour-nya repository yaitu versionable, bisa di fork, clone, dan lain sebagainya. Gist biasa digunakan untuk code highlighting. 

Untuk dapat membuat Gist kita harus memiliki akun [Github][github]{:target="_blank"} terlebih dahulu. Cara untuk membuat Gist yaitu :

1. melalui [halaman Gist][gist]{:target="_blank"}, dengan klik new Gist (tombol plus)
2. isi nama file dengan suffiks ekstensi file jadi [Github][github]{:target="_blank"} akan otomatis mendeteksi bahasa apa yang digunakan
3. juga bisa centang ACE editor kalau mau menggunakan editor
4. klik Create public Gist jika ingin membuat Gist tersebut dapat di akses semua orang
5. klik Create secreat Gist untuk private Gist

<img title="creating new Gist" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA" data-src="/images/gist/new_gist.png" class="th post-image">

Jika kita ingin memasang Gist tersebut ke dalam website, kita hanya perlu copy Embed URL yang sudah disediakan oleh [Github][github]{:target="_blank"}. 

<img title="embedding Gist" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA" data-src="/images/gist/embed_gist.png" class="th post-image">

Contoh hasil dari pemasangan Gist :

<script src="https://gist.github.com/yunanhelmy/656d746fc7e1613cbd23.js"></script>

Cheers !

[gist]: https://gist.github.com/
[github]: https://github.com