---
layout: default
title:  "Workshops at o11yfest"
permalink: /workshops
---

{% include 2022-cta-buttons.html %}

# Observability Workshops

These workshops will be conducted live during the conference days AND in parallel
 to pre-recordings on the conference live-stream.

<style type="text/css">
header, .row {
  display: flex;  /* aligns all child elements (flex items) in a row */
}

.col {
  flex: 1;        /* distributes space on the line equally among items */
}
</style>
<script type="text/javascript">
  window.onloadqueue=(window.onloadqueue||[]).concat([function () {
    $('.rownum').each(function(i,o) {
      $(this).text("Day " + (i+1))
    });
  }]);
</script>

<table style="border:none;">
  <thead>
    <td class="col">Conference Day</td>
    <td class="col">In Your Locale Date/Time</td>
    <td class="col">Topic</td>
    <td class="col" style="text-align:center;">Host</td>
  </thead>
  {% assign items = site.data.2022-sponsors.items | where_exp: "item", "item.workshop" | sort: "workshop.datetime" %}
  {% for item in items %}
    <tr>
      <td class="col"><a href="{{ item.link }}"><span class="rownum"></span></a></td>
      <td class="col"><a href="{{ item.link }}"><span class="localizetime">{{ item.workshop.datetime }}</span></a></td>
      <td><a href="{{ item.link }}">{{ item.workshop.title }}</a></td>
      <td class="col" style="text-align:center;"><a href="{{ item.link }}"><img width="200" class="sponsor-logo-{{ item.level }}" src="/assets/images/sponsors/{{ item.logo }}" title="{{ item.name }}"></a></td>
    </tr>
  {% endfor %}
</table>
