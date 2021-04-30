---
layout: speaker
id: steve-prazenica
title:  "Steve Prazenica"
permalink: /speakers/steve-prazenica
---

<h3>Co-Presenter</h3>
<div class="flexbox" style="">
  {% assign panelists = site.data.speakers.items | where_exp:"item", "item.keynote == 'Day 1'" %}
  {% for panelist in panelists %}
    {% if panelist.id != 'steve-prazenica' %}
    {% include speaker-thumb.html person=panelist %}
    {% endif %}
  {% endfor %}
</div>
