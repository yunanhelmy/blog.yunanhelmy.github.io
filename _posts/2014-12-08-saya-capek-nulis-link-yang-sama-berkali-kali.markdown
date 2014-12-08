---
layout: post
title: "Saya Capek Nulis Link Yang Sama Berkali - kali"
date: 2014-12-08 18:13:58 +0700
comments: true
categories: jekyll
tags: jekyll
thumbnail:
---

Saya jadi teringat beberapa waktu lalu saya pernah mengajari [Nyonya][menik]{:target="_blank"} dalam membuat link di Jekyll. Issuenya sih sederhana, cuma tidak suka menuliskan link - link yang sama ataupun yang pernah digunakan di tulisan sebelumnya. Pastinya capek juga sih nulis <del>copas</del> link ke tulisan yang baru. Nah, waktu itu saaya memberikan solusi dengan membuat [collection][collection]{:target="_blank"}.

Namun, dengan menggunakan metode tersebut kita masih tetap harus menuliskan tag untuk membuat link. Kali ini saya kepikiran untuk memberikan alternatif lain. Yaitu dengan membuat custom tag (Liquid) sendiri. Contohnya jika saya ingin menuju ke http://nyonyahm.wordpress.com, saya tinggal menuliskan satu tag dan otomatis Jekyll akan mem-parsing menjadi link. Kebetulan sih saya pengen tag nya `menik label_link`.

Caranya mudah. Kita perlu membuat Class baru (contoh RenderMenikBlog.) dengan extend dari `Liquid::Tag`, lalu kita register tag tersebut `Liquid::Template.register_tag('menik', Jekyll::RenderMenikBlog)`. Class tersebut kebetulan saya masukkan di module Jekyll. Tujuannya sih supaya nanti kalau jadi plugin bisa integrasi mudah dengan Jekyll. Nah, kalau sudah ditambahkan jangan lupa di restart dulu servernya. Lalu, kita bisa melihat hasil dari :

{% gist 9c5745e6f6d3dce96d4c %}

Kode selengkapnya : 

{% gist 2c59c121bdc6b78e95bd %}

> Akan tetapi perlu di ingat kode tersebut tidak akan berjalan di Github karena Github tidak mengizinkan plugin dan kode tersebut merupakan kode Ruby.

Kita pasti berpikir, metode tersebut hanya cocok untuk satu link saja. Bagaimana kalau kita mempunya banyak link? Bukankah pemborosan juga kalau membuat Class satu persatu?

Saya jadi terpikir nanti akan membuat plugin di Jekyll untuk dapat menyelesaikan issue tersebut. Idenya sih menggunakan custom liquid tag dan menggunakan collection. Jadi nanti ada tag baru `link_to`. Tag tersebut bisa di isi parameter link ataupun mengambil data dari collection yang sudah ada. Tunggu kelanjutan kisahnya di episode selanjutnya!

[collection]: http://menikdp.github.io/articles/2014/10/19/using-collection/
[menik]: http://nyonyahm.wordpress.com
