---
layout: home
---

# About the Conference

**o11yfest** is a two-day virtual technology conference focused on empowering DevOps practitioners with solutions that improve observability over systems and processes. It will be held online using a online platform on May 17th & 18th 2021.

o11yfest, previously held as Observe 20/20, is in its second year of operation as a grass-roots event whose aim is to encourage sharing of knowledge and development of the discipline of observability engineering.

100% of net ticket sales and contributor sponsorships will go to good causes [(read more here)](/efforts).

<div class="flexbox">
  <a class="flexbox-button" href="{{ site.registration_link }}">Attend this Event</a>
  <a class="flexbox-button" href="/sponsor">Sponsor this Event</a>
</div>

# Speakers & Agenda

Our CFP for o11yfest 2021 closed March 15th, and we have confirmed the following
 speakers will be part of our event:

{% include speaker-thumbs.html %}

# Premiere Sponsors

These sponsors have materially contributed both in effort and financial underwriting to make this conference possible! A special thanks goes to them for the opportunity to come together and learn!

<div class="flexbox">
  {% assign items = site.data.sponsors.items | where_exp:"item", "item.level == 'premiere'" %}
  {% for item in items %}
    <a href="{{ item.link }}"><img class="sponsor-logo-{{ item.level }}" src="/assets/images/sponsors/{{ item.logo }}" title="{{ item.name }}"></a>
  {% endfor %}
</div>

# Contributor Sponsors

These sponsors have donated significantly to one of our community-driven 'good causes'.
We can't thank them enough for their support of these worthwhile organizations and this conference!

If you would also like to sponsor in this way, please [contact the organizers](/contact).

<div class="flexbox">
  {% assign items = site.data.sponsors.items | where_exp:"item", "item.level == 'contributor'" %}
  {% for item in items %}
    <a href="{{ item.link }}"><img class="sponsor-logo-{{ item.level }}" src="/assets/images/sponsors/{{ item.logo }}" title="{{ item.name }}"></a>
  {% endfor %}
</div>
