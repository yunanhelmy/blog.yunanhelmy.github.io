---
layout: post
title: "Nautilus Extensions Yang Sering Digunakan"
date: 2014-12-15 10:29:57 +0700
comments: true
categories: [nautilus]
tags: [linux, nautilus]
thumbnail:
---

Kalau kita menggunakan OS Ubuntu pasti sering menggunakan Nautilus *file manager*. Sekarang Nautilus bername Gnome Files dan merupakan *file manager* resmi untuk Gnome Desktop. Dalam keseharian kita pasti menggunakannya dan pastinya merasakan beberapa kekurangan dari Nautilus. Beberapa extensions-pun saya gunakan untuk mempermudah hidup saya. Apa saja extensions tersebut?

### Membuka terminal lewat Nautilus

Biasanya sih kasusnya saya mau download Avatar Korra menggunakan wget, jadi kan harus ke terminal dahulu. Karena kadang saya terlalu malas untuk cd ke direktori tertentu akhirnya saya memasang [extension][tri]{:target="_blank"} ini. Nanti saya cukup navigasi ke direktori yang saya inginkan lalu saya cukup klik kanan dan `open in terminal`. Cukup memudahkan saya untuk mengarahkan saya dari GUI Gnome Files ke terminal kesayangan :)

Untuk menginstall extension ini cukup install lewat apt :

{% highlight bash %}
sudo apt-get install nautilus-open-terminal
{% endhighlight %}

### Memanipulasi gambar

[Extension][two]{:target="_blank"} ini digunakan untuk resize atau rotate gambar. Mau di resize dengan ukuran tertentu yang sudah disediakan, atau mendefinisikan ukuran sendiri, ataupun berdasarkan persentase. Saya menghemat waktu kalau akan mengubah ukuran gambar baik itu untuk blog ataupun urusan pekerjaan. Kita hanya perlu mengarahkan kursor ke gambar yang diinginkan lalu klik kanan dan `resize image`.

Untuk menginstall extension ini kita harus menginstall ImageMagick juga sebagai image processor :

{% highlight bash %}
sudo apt-get install imagemagick nautilus-image-converter
{% endhighlight %}

### Membuka Nautilus sebagai root

Kadang kita hanya perlu membuka Nautilus sebagai root untuk menghapus file tertentu. Jadi kalau terminal-phobia bisa menggunakan [extension][one]{:target="_blank"} ini. Akan tetapi hati - hati menggunakan extension ini karena kita akan membuka Nautilus sebagai root. Gunakan dengan bijak ketika akan menghapus file. Cukup klik kanan dan `open as root`.

Untuk menginstall extension ini kita harus menambahkan ppa terlebih dahulu :

{% highlight bash %}
sudo apt-add-repository ppa:nae-team/ppa
sudo apt-get update
sudo apt-get install nautilus-open-as-root
{% endhighlight %}

### Advanced menu

Nah, [extension][one]{:target="_blank"} yang terakhir ini banyak fungsinya. Mulai dari mengejek ukuran file, mengecek filetype, mount / unmount ISO, ataupun ganti emblem / icon. Saya sering menggunakan kalau ingin mount ISO dan membuka filenya. Jika kita menginstall extension ini, kita akan menemukannya di context menu (klik kanan), di menu advanced.

Utuk menginstall extension ini diperlukan ppa juga :

{% highlight bash %}
sudo apt-get install nautilus-advanced-menu
{% endhighlight %}


[one]: http://www.hecticgeek.com/2012/12/useful-nautilus-extensions-ubuntu/
[two]: http://www.webupd8.org/2010/01/convert-and-rotate-images-with-nautilus.html
[tri]: http://askubuntu.com/questions/207442/how-to-add-open-terminal-here-to-nautilus-context-menu