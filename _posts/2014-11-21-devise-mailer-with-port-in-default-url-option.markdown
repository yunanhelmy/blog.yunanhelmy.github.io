---
layout: post
title: Devise Mailer With Port In Default Url Option
date: "2014-11-21 14:20:48 +0700"
comments: true
categories: [rails,ruby]
tags: [rails, ruby, capistrano]
thumbnail: 
---

## Devise Mailer Custom Port

For people who used Devise will often sending email, eg. confirmation, forgot password, unlock account, etc. Devise come with easy for use and handy configuration. I often use Devise and override its controllers and views. Usually i did password reset and account confirmation without port for link address. But some project makes me to give a port in the forgot password link as the project is still beta and not publicly opened in port 80. In my case, i have to set the port to 22080. So how i do it? You can add it in `production.rb` or `development.rb` (based on your need). Add this following configuration :

```
config.action_mailer.default_url_options = { :host => 'yourip', :port => 22080 }
```

That's it. Url will have port 22080 now because we specify the port on it. You won't need to edit url helper for Devise. If it doesn't work, just try to change default url option in the `application_controller.rb`. Write this method and add port on it :

{% highlight ruby %}
def default_url_options(options={})
  options.merge!({ :port => 22080 })
end
{% endhighlight %}