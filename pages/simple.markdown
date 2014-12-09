---
layout: page
title: List
permalink: /simple/
---

<ul>
  {% for post in site.posts %}
  <li><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

