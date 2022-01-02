---
layout: 2021-speaker
id: christina-yakomin
title:  "Christina Yakomin"
permalink: /speakers/christina-yakomin
---

<h3>Co-Presenter</h3>
<div class="flexbox" style="">
  {% assign panelists = site.data.speakers.items | where_exp:"item", "item.keynote == 'Day 1'" %}
  {% for panelist in panelists %}
    {% if panelist.id != 'christina-yakomin' %}
    {% include 2021-speaker-thumb.html person=panelist %}
    {% endif %}
  {% endfor %}
</div>
