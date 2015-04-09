---
layout: page
title: Presentation
permalink: /presentations/
visible: true
---

This is list off all presentations :

<ul>
  {% for post in site.data.slides %}
  <li><a href="{{ post.href }}" target="_blank">{{ post.label }}</a></li>
  {% endfor %}
</ul>