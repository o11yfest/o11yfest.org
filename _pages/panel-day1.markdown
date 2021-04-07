---
layout: default
title:  "DAY 1 Panel: Growing and Advocating Observability in Organizations"
permalink: /panel-day1
---

<h1>{{ site.data.day1panel.title }}</h1>
<p>
  {{ site.data.day1panel.description }}
</p>
<div style="flex:1;align-self:flex-start;text-align:center;">
<div class="flexbox">
  <a class="flexbox-button" href="{{ site.registration_link }}" style="font-size:0.9em;">Attend this Session</a>
</div>
  <h3>Panelists</h3>
  <div class="flexbox" style="">
    {% assign panelists = site.data.speakers.items | where_exp:"item", "item.panel == 'day1'" %}
    {% for panelist in panelists %}
      {% include speaker-thumb.html person=panelist %}
    {% endfor %}
  </div>
</div>
