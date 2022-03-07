# About the Conference

**o11yfest** is a multi-day virtual technology conference focused on empowering DevOps practitioners with solutions that improve observability over systems and processes. It will be held online using a online platform on {{ site.current_event_dates }}.

o11yfest is in its third year of operation as a grass-roots event whose aim is to encourage sharing of knowledge and development of the discipline of observability engineering.

100% of net ticket sales and contributor sponsorships will go to good causes [(read more here)](/efforts).

<div class="flexbox">
  <a class="flexbox-button" href="{{ site.registration_link }}">Attend {{ site.event_short_title }}</a>
  <a class="flexbox-button" href="/cfp">Our CFP</a>
  <a class="flexbox-button" href="/sponsor">Sponsor this Event</a>
</div>

# Speaking and Presentations

Unlike a typical monolithic tech event, this year we're taking a more continuous approach to the content of our event, such that:

1. We will use a 'rolling call for presentations (CFP)' that will open on Jan 10th and close on May 1st
2. There will be a few select 'keystone' presentations from leaders in the OpenTelemetry community
3. Teams will be encouraged to submit their observability stories as 15min group presentations
4. We will be receiving lightning talks from individual contributors in the industry

All content will need to be pre-recorded and unique to o11yfest (not the same exact upload as what was shared in other conferences, though it can be based on a presentation shared elsewhere). CFP and presentation uploads can happen at any time, but the later the submission, the less likely to make the days-of schedule headlines.

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
