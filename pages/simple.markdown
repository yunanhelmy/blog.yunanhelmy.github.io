---
layout: page
title: List
permalink: /simple/
visible: true
---

<ul>
  {% for post in site.posts %}
  <li><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

