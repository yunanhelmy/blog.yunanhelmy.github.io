---
layout: post
title: "Membuat Slide Presentasi Dengan Menggunakan Reveal.js"
date: 2014-11-27 20:40:29 +0700
comments: true
categories: [reveal.js]
tags: [slides, presentation, reveal.js]
thumbnail:
---

## Presentasi Pada Zaman Dahulu Kala

Saya masih teringat pertama kali mengenal komputer dulu saya menggunakan Sistem Operasi Windows XP dan sering menggunakan Microsoft Powerpoint untuk membuat presentasi. Mungkin bisa dikatakan saya sudah familiar dengan Microsoft Powerpoint sejak SMP. Pada zaman dahulu kala sebelum saya mengenal tools untuk membuat slide presentasi yang lain, saya hanya menggunakan Microsoft Powerpoint. Lambat laun saya mengenal linux dan mengenal beberapa Tools Open Source pembuat slide presentasi seperti Libre Office, Open Office, dll. 

Saya juga masih ingat untuk membawa presentasi saya di dalam disket dan flashdisk untuk bisa di bawa ke sekolah. Dulu saya belum kenalan sama internet sih ya jadi kurang tahu menahu tentang Cloud Storage. Jadi ya kalau mau presentasi harus bawa slide presentasinya. Berbeda dengan waktu kuliah. Meski saya masih memakai Microsoft Powerpoint untuk membuat presentasi tapi saya biasanya menguploadnya di Cloud Storage. Jaga - jaga kalau saya lupa membawa slide presentasinya :P

## Presentasi Pada Masa Kini

Lambat laun karena pertumbuhan internet, akhirnya saya juga mengenal beberapa tools untuk membuat presentasi online. Saya perkenalkan [reveal dot js][reveal.js]{:target="_blank"}! Sebenarnya ada banyak tools untuk membuat slide presentasi, tapi kali ini saya cuma mengenalkan [reveal dot js][reveal.js]{:target="_blank"} saja.

Pertama kali saya mengetahui [reveal dot js][reveal.js]{:target="_blank"} ini sebenarnya karena kebetulan saja saya pernah menggunakan [slides.com][slides.com]{:target="_blank"} (sebelumnya bernama slid.es). [slides.com][slides.com]{:target="_blank"} merupakan tools untuk membuat presentasi online. Tampilan menarik dan bisa di konfigurasi sesuai dengan keinginan kita. Yang menarik dari [slides.com][slides.com]{:target="_blank"} adalah presentasi kita di buat secara online dan tersimpan di Cloud Storage. Hal ini memudahkan kita dalam hal simpan menyimpan. Yang paling penting adalah kita jadi terlihat **keren** karena kita menggunakan media website untuk membuat presentasi :D

Tidak sampai disitu saja, saya ingin terlihat lebih **keren** lagi. Akhirnya saya memutuskan untuk memasang [reveal dot js][reveal.js]{:target="_blank"} di blog ini. Karena [reveal dot js][reveal.js]{:target="_blank"} merupakan gabungan dari HTML, CSS, dan javascript, jadi saya tidak perlu repot - repot settingnya di Jekyll. [reveal dot js][reveal.js]{:target="_blank"} sendiri merupakan *static content* jadi santai kita hosting di Github pun tidak masalah. 

Untuk dapat menggunakan [reveal dot js][reveal.js]{:target="_blank"} Anda bisa download di [Github repository-nya][reveal.js]{:target="_blank"} lalu extract saja filenya. Anda bisa mengontrol semuanya dengan HTML. Jadi saran saya kalau anda tidak suka tesk silakan menggunakan [slides.com][slides.com]{:target="_blank"}. 

Hal pertama yang harus dilakukan adalah membuat file HTML dan selanjutnya adalah **koding!** Sederhana saja, Anda hanya cukup memasang CSS nya terlebih dahulu dan juga tema yang Anda inginkan. Ada beberapa tema bawaan yang menarik untuk di pakai dan tentunya jika tidak ada yang suka bisa kita buat tema sendiri menggunakan CSS kita sendiri. 

<script src="https://gist.github.com/yunanhelmy/e4731557556e1e0c21a2.js"></script>

Selanjutnya pasang javascript dan initalize aja Reveal.js nya. Saran saya sih di taruh di bawah sebelum tag tutup body.  

<script src="https://gist.github.com/yunanhelmy/03f220a674e52afacc8a.js"></script>

Nah, untuk dapat membuat presentasi buatlah class reveal dan di dalamnya ada class slides. Di dalam class slides buatlah section - section. Section tersebut mewakili 1 halaman presentasi. Kita bisa menambah elemen HTML apapun disitu. Jadi mau H1, paragraf, gambar, link, video, ataupun lainnya bisa di tambah di situ. 

<script src="https://gist.github.com/yunanhelmy/e485dd88c6b28c8e0066.js"></script>

Konfigurasinya juga terhitung sangat mudah, bisa menambahkan control, menambahkan shortcut, progress, touch screen mode, auto slide, dan masih banyak lagi. Dokumentasinya juga lengkap. Kita tidak akan tersesat kalau mengikutinya. Saya ingin membahasnya lebih lanjut mengenai konfigurasi dan bagaimana cara membuatnya. Akan tetapi sepertinya tulisan ini sudah terlalu panjang. Jadi silakan bisa langsung menuju [TKP][reveal.js]{:target="_blank"}. Hehehe

Kode lengkapnya seperti ini : 

<script src="https://gist.github.com/yunanhelmy/caf6fa91ca20263c9bb6.js"></script>

Cukup mudah kan untuk membuat presentasi, dan [hasilnya seperti ini lho][hasil] ...

[hasil]: http://yunanhelmy.github.io/slides/contoh-slide/
[reveal.js]: https://github.com/hakimel/reveal.js
[slides.com]: http://slides.com/