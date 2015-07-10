---
layout: page
title: Tags
description: Tags
---

<ul class="archive">
	{% for tag in site.tags %}
	<li class="year" id="{{ tag[0] }}">{{ tag[0] }} ({{ tag[1].size }})</li>
	{% for post in tag[1] %}
	<li class="item">
		<time datetime="{{ post.date | date:"%Y-%m-%d" }}">{{ post.date | date:"%Y-%m-%d" }}</time>
		<a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
	</li>
	{% endfor %}
	{% endfor %}
</ul>