# About the Conference

**o11yfest** is a multi-day virtual technology conference focused on empowering DevOps practitioners with solutions that improve observability over systems and processes. It will be held online using a online platform on {{ site.current_event_dates }} from 11am-3pm EST each day.

o11yfest is in its third year of operation as a grass-roots event whose aim is to encourage sharing of knowledge and development of the discipline of observability engineering.

100% of net ticket sales and contributor sponsorships will go to good causes [(read more here)](/efforts).

{% include 2022-cta-buttons.html %}

# Speaking and Presentations

Unlike a typical monolithic tech event, this year we're taking a more continuous approach to the content of our event, such that:

1. Now that our CFP has closed, we already have many of the pre-recorded presentations!
2. We are encouraging the whole community to [submit '(p)reaction' videos, more info here](/2022/preaction)

We're waiting on a few more acceptances, but so far many awesome folks will be presenting:

<div style="max-width:800px;margin:0px auto;">

{% include 2022-speaker-thumbs.html %}

</div>

# Premiere Sponsors

These sponsors have materially contributed both in effort and financial underwriting to make this conference possible! A special thanks goes to them for the opportunity to come together and learn!

<div class="flexbox">
  {% assign items = site.data.2022-sponsors.items | where_exp:"item", "item.level == 'premiere'" %}
  {% for item in items %}
    <a href="{{ item.link }}"><img class="sponsor-logo-{{ item.level }}" src="/assets/images/sponsors/{{ item.logo }}" title="{{ item.name }}"></a>
  {% endfor %}
</div>

# Captioning Sponsor

<div class="flexbox">
  {% assign items = site.data.2022-sponsors.items | where_exp:"item", "item.level == 'captioning'" %}
  {% for item in items %}
    <a href="{{ item.link }}"><img class="sponsor-logo-{{ item.level }}" src="/assets/images/sponsors/{{ item.logo }}" title="{{ item.name }}"></a>
  {% endfor %}
</div>

# Contributor Sponsors

These sponsors have donated significantly to one of our community-driven 'good causes'.
We can't thank them enough for their support of these worthwhile organizations and this conference!

If you would also like to sponsor in this way, please [contact the organizers](/contact).

<div class="flexbox">
  {% assign items = site.data.2022-sponsors.items | where_exp:"item", "item.level == 'contributor'" %}
  {% for item in items %}
    <a href="{{ item.link }}"><img class="sponsor-logo-{{ item.level }}" src="/assets/images/sponsors/{{ item.logo }}" title="{{ item.name }}"></a>
  {% endfor %}
</div>

# Want to Sponsor?

Virtual events are not zero cost, however, o11yfest is not about turning a profit. We do not sell attendee data and in fact prefer to have as little Personally Identifiable Information (PII) as necessary to run a safe and effective conference. This year we have a few new creative ideas to allow attendees and sponsors to equitably connect which you can [learn about here](/sponsor).
