---
layout: post
title: "Rails Routes"
date: 2015-03-05 09:38:01 +0700
comments: true
categories: [rails,ruby]
tags: [rails, ruby, routes]
thumbnail:
---

Kalau dulu pernah belajar Rails sebelum Rails 3, pasti akan mengalami kesusahan untuk menampilkan routes via console jika sudah terlalu banyak kodenya. Proses `rake routes` akan memakan waktu yang lama dan membuang waktu yang seharusnya menjadi waktu produktif. Padahal seharusnya waktu kita harus dihabiskan untuk memikirkan kode bukan untuk menunggu proses menampilkan routes.

Ada [gem sextant][gem]{:target='_blank'} yang memberikan manfaat sangat bagus. Jadi, gem ini akan menampilkan routes di browser dengan kecepatan yang berbeda jauh dari console. Dulu sewaktu saya menggunakan Rails 3, gem ini selalu jadi daftar gem yang harus ada di **group development**. Jadi, saya hanya perlu ke `http://localhost:3000/rails/routes` untuk melihat path yang saya inginkan.

Saking populer dan mudahnya gem [ini][gem]{:target='_blank'}, sekarang gem [ini][gem]{:target='_blank'} sudah di **merged** oleh Rails 4. Jadi kita bisa menggunakannya tanpa harus meng-install. Akan tetapi url yang digunakan berbeda. Jika dulu [gem sextant][gem]{:target='_blank'} harus menuju `http://localhost:3000/rails/routes` untuk melihat path, Rails 4 menggunakan `http://localhost:3000/rails/info/routes` sekarang. 

Gampang kan?

[gem]: https://github.com/schneems/sextant
