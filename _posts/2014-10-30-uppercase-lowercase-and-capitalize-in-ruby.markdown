---
layout: post
title: "UPPERCASE, lowercase, and Capitalize in Ruby"
date: 2014-10-30 14:57:15 +0700
comments: true
categories: ruby
tags: ruby
thumbnail: 
---
Hello,

For someone that already familiar with `Ruby`, `Ruby` can convert / manipulate string. But what `Ruby` can do?

Suppose we have string "hello world". Can we manipulate it so it will be all uppercase? Yes, you can. Simply do `"hello world".upcase` it will return all character uppercase "HELLO WORLD". Or if you want "Hello World" to become "hello world", you can do `"Hello World".downcase`. You can also make it capitalize by doing `"hello world".capitalize`.

But doing `"hello world".capitalize` will give you "Hello world" because its only capitalize first character. What if you want to return "Hello World" instead of "Hello world"? 

This is simple idea how to get return value "Hello World". 

1. First, you split it with space
2. Make it all capitalize
3. And then join it again with space

This will give us "Hello World".

You have to make `Ruby` understand what do you want. This is what you've to told to `Ruby`. `"hello world".split(" ").map(&:capitalize).join(" ")`. Simple, isn't it?

Are you tired for repeating that code over and over? Please DRY , Dont Repeat Yourself! You can do awesome things like this :

{% highlight ruby %}
class String
  def capitalize_all
    self.split(" ").map(&:capitalize).join(" ")
  end
end
{% endhighlight %}

But what on earth is that ??

It is not secret anymore that you can dinamically adding method to a class in `Ruby`. What we've done is we add new method called `capitalize_all` into `Ruby` `String` class. Then once it settled we only need to call that method. For example : `"hello world".capitalize_all`.

I hope my post will give you the idea about dinamyc method in `Ruby`.