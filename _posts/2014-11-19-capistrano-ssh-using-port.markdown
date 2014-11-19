---
layout: post
title: "Capistrano, SSH Using Port"
date: 2014-11-19 15:34:23 +0700
comments: true
categories: [capistrano, ruby, rails]
tags: [capistrano, ruby, rails]
thumbnail:
---
If you are familiar with Rails you must have ever used Capistrano as automatic deployment. It will give us a lot of benefit and its easy enough to understand. I've been using Capistrano for about 1 year. There are configuration that you can setup manually based on your preference. Said, you already have your SSH in port 22000 instead 22. Usually you did `ssh -p 22000 user@domain`. So how do we setup that port in Capistrano?

There are 2 ways to do it. All you need is to tell capistrano that you are using specific port by adding option

```
set :port, 22000
```

or

```
ssh_options[:port] = 22000
```

into your recipe, for example in `config/deploy.rb` or `config/deploy/yourenviroment.rb`.

There are so many options in Capistrano. Probably i'll write it later in another post.