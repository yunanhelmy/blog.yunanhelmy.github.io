---
layout: post
title: "Ruby on Rails : Menghitung Total Penjumlahan"
date: 2017-06-18 09:03:19 +0700
comments: true
categories: [ruby, rails]
tags: [rails, ruby]
thumbnail:
---

Setelah sekian lama menistakan diri sendiri dengan tidak menulis blog, akhirnya pada kesempatan kali ini saya ingin menulis lagi. saya agak bingung mengubah **sum** jadi bahasa Indonesia, maksud dari kata **Total Penjumlahan** itu adalah **sum**. Simple aja ya ! Hehehe

Kita semua pasti dihadapkan oleh operasi **sum** dalam pengerjaan aplikasi. Namun, apakah yang selama ini kita lakukan sudah benar? Mari kita bahas satu per satu.

Di dalam Rails, kita semua tahu kalau ActiveRecord method **sum** memang didesain untuk memanggil query **select sum(x) from table_y**. Kalau dibandingkan dengan looping manual, method tersebut jauh lebih efektif dan efisien. Meskipun begitu, tidak ada salahnya untuk kita benchmark. Tools yang digunakan untuk benchmark adalah [benchmark-ips][benchmark-ips-link].

Terlebih dalulu install gem benchmark-ips :

{% highlight ruby %}
gem install benchmark-ips
{% endhighlight %}

Sekarang kita bandingkan method **sum** dengan penjumlahan manual dengan menggunakan looping. Method **sum** kita definisikan sebagai method1 dan looping manual sebagai method2. Masuk ke console rails dan *require benchmark/ips*. Sebagai contoh, saya menggunakan model **AdditionalPoint** dan atribut **point** di dalamnya.

{% highlight ruby %}
def method1
  AdditionalPoint.sum(:point)
end

def method2
  pts = 0
  AdditionalPoint.pluck(:point).each do |p|
    pts += p
  end
end
{% endhighlight %}

Kemudian kita bandingkan 2 method tersebut :

{% highlight ruby %}
Benchmark.ips do |x|
  x.report('menggunakan method sum') { method1 }
  x.report('manual looping') { method2 }

  x.compare!
end
{% endhighlight %}

Bagaimanakah hasilnya ?

![Benchmark](data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA){:class="th post-image"}{:data-src="/images/benchmark-sum.png"}{:title="Benchmark"}

Dari gambar di atas bisa kita simpulkan jika menjumlahkan nilai dengan manual looping 3.79x lebih lambat dibandingkan method **sum**.

Ada beberapa alasan mengapa kita lebih baik menghindari penjumlahan manual :

1. Proses penjumlahan berada di Ruby, memakan banyak RAM. Dengan menggunakan method **sum** kita menjumlahkan nilai di database, bukan di Ruby.
2. Proses lebih lambat.
3. Kode terlalu panjang dan prosedural.

Benchmark di atas ditujukan spesifik untuk Ruby on Rails. Bagaimana cara menghitung total penjumlahan di dalam pure Ruby? Asumsikan kita punya array dengan 1000 elemen dan kita ingin menjumlahkan semua nilai tersebut. Mari kita lakukan dengan beberapa cara :

### Inject symbol (ekuivalen dengan reduce)

{% highlight ruby %}
def sum_method_1
  ((1..1000).to_a).inject(:+)
end
{% endhighlight %}

### Inject ke proc

{% highlight ruby %}
def sum_method_2
  ((1..1000).to_a).inject(&:+)
end
{% endhighlight %}

### Inject dengan menggunakan block

{% highlight ruby %}
def sum_method_3
  ((1..1000).to_a).inject { |a, i| a + i }
end
{% endhighlight %}

### Looping dan map

{% highlight ruby %}
def sum_method_4
  sum = 0
  ((1..1000).to_a).map { |a| sum += a }
  sum
end
{% endhighlight %}

### Menggunakan eval

{% highlight ruby %}
def sum_method_5
  eval ((1..1000).to_a).join("+")
end
{% endhighlight %}


Lalu benchmark semua method :

{% highlight ruby %}
Benchmark.ips do |x|
  x.report('inject ke symbol') { sum_method_1 }
  x.report('inject ke proc') { sum_method_2 }
  x.report('inject ke block') { sum_method_3 }
  x.report('map dan loop') { sum_method_4 }
  x.report('jadikan string kemudian eval') { sum_method_5 }

  x.compare!
end
{% endhighlight %}

Bagaimana hasilnya?

![Benchmark](data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA){:class="th post-image"}{:data-src="/images/benchmark-sum-array.png"}{:title="Benchmark"}

Dari perbandingan tersebut, method inject dengan symbol adalah method yang paling efisien. Meskipun looping manual tidak memiliki perbedaan signifikan dengan method inject, menggunakan looping manual tidak dianjurkan. Inject dengan menggunakan block dan proc lebih lambat dibandingkan dengan inject dengan menggunakan symbol.

Kesimpulan yang dapat kita ambil yaitu, untuk menjumlahkan nilai dalam array kita dapat menggunakan method : ```your_array.inject(:+)```.



[benchmark-ips-link]: https://github.com/evanphx/benchmark-ips

 