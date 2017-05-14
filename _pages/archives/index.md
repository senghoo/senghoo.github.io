---
layout: page
title:  "Archives"
permalink: "/archives/"
---


<section class="archive">
{% for post in site.posts %}
{% unless post.next %}

{% unless forloop.first %}</div></div>{% endunless %}

  <div class="">
    <h2 class="post-year col span_2">{{ post.date | date: '%Y' }}</h2>
    <div class="posts-by-year col span_10">

{% else %}
{% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
{% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
{% if year != nyear %}

{% unless forloop.first %}</div></div>{% endunless %}

  <div class="">
    <h2 class="post-year">{{ post.date | date: '%Y' }}</h2>
    <div class="posts-by-year col span_10">
{% endif %}
{% endunless %}

  <article class="">
    <time datetime="{{ post.date | date: '%Y-%m-%d' }}">{{ post.date | date: '%Y-%m-%d' }}</time>
    <a href="{{ site.baseurl }}{{ post.url }}" title="{{ post.title }}" class="">{{ post.title }}</a>
  </article>

{% if forloop.last %}</div></div>{% endif %}

{% endfor %}
</section>
