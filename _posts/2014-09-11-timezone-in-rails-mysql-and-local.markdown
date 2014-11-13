---
layout: post
title: "Time zone in Rails, MySQL, and local"
date: 2014-09-11 08:50:37 +0700
comments: true
categories: [rails, ruby, mysql, server]
tags: [rails, ruby]
thumbnail:
---
I find its frustating when you can't set the right time zone for your application / website. Currently i'm handling project that needs to display today events and upcoming events. I got task to migrate it into new server. But when its migrated the features is still not correct.

### MySQL

First, i thought it was wrong time zone for mysql then i changed mysql default time zone. You need to see current mysql time zone using :

```
SELECT @@global.time_zone;
```

then you can change it in your desired time zone :

```
SET @@global.time_zone='+07:00';
```

or you can change my.cnf by adding default time zone :

```
default_time_zone='+07:00'
```

### Rails

Changing mysql default time zone seems not solve that problem. I thought it was because Rails not setting the right time zone so i changed `application.rb` to my desired time zone :

{% highlight ruby %}
config.time_zone = 'Jakarta'
{% endhighlight %}

restart the application and reload my rails console but still its not solve that problem. I found that `Time.now` and `Time.zone.now` returns different values because `Time.now` return local date but `Time.zone.now` return the desired time zone in `application.rb`. If you want to make `Time.zone.now` returning local date then you can adjust `application.rb` :

{% highlight ruby %}
config.active_record.default_timezone = :local
{% endhighlight %}

### Local server time

But its still not solved. Why?

Finally, i found that all code in the application was using `Time.now` so instead changing all `Time.now` into `Time.zone.now` i changed local date. You need to display current date of your local using terminal :

```
$ date
```

You will get something like this (based on your local datetime setting):

```
Wed Sep 10 21:24:56 EDT 2014
```

Thats it. I changed local date to my desired date :

```
$ sudo dpkg-reconfigure tzdata
```

just follow the instruction and choose what you want. Don't forget to restart cron as its still running in your past time zone
`$ /etc/init.d/cron stop` `$ /etc/init.d/cron start`

## Conclusion
If you have configured time zone in your application you should using `Time.zone.now` instead `Time.now` as `Time.now` return your local / system time.

{% highlight ruby %}
Time.now # => Returns system time and ignores your configured time zone.
Time.zone.now # => Returns your desired time zone.
{% endhighlight %}

Hope this will help you!
