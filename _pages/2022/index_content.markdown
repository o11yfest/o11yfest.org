
# It's a Wrap!

Thank you to our hundreds of attendees, many sponsors, and our volunteer organizers this year!

Though we've closed our Airmeet conference event hub, we will be processing all the recordings
 and they will be available on YouTube starting next week! Look for an email from organizers [at] o11yfest [dot] org
 and share with colleagues!

 <div class="preaction-carousel-container"></div>

{% include 2022-cta-buttons.html %}

# About the Conference

**o11yfest** is a multi-day virtual technology conference focused on empowering DevOps practitioners with solutions that improve observability over systems and processes. It was online using a online platform on {{ site.current_event_dates }} from 11am-3pm EST each day.

o11yfest is in its third year of operation as a grass-roots event whose aim is to encourage sharing of knowledge and development of the discipline of observability engineering.

100% of net ticket sales and contributor sponsorships will go to good causes [(read more here)](/efforts).

# Speaking and Presentations

Unlike a typical monolithic tech event, this year we're taking a more continuous approach to the content of our event, such that:

1. Now that our CFP has closed, we already have many of the pre-recorded presentations!
2. We are encouraging the whole community to [submit '(p)reaction' videos, more info here](/2022/preaction)

We're waiting on a few more acceptances, but so far many awesome folks will be presenting:

<div style="max-width:900px;margin:0px auto;">

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


<div class="preaction-carousel-box">
<h2>Pre-event Reactions from Our Community</h2>
<div class="preaction-carousel">
  {% assign persons = site.data['2022-speakers'].items %}
  {% for person in persons %}
    {% if person.preactions and person.preactions.size > 0 %}
      {% for preaction in person.preactions %}
        {% if preaction.featured %}
          <div style="width:300px;flex:1;align-self:flex-start;">
            <div class="video_wrapper">
            {% if preaction.youtube_id %}
              <iframe class="video-iframe" width="280" height="157" src="https://www.youtube.com/embed/{{ preaction.youtube_id }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            {% else %}
            <div class="video_thumbnail"><a href="{{ preaction.video_url }}">{{ preaction.contributor }}</a></div>
            {% endif %}
            </div>
          </div>
        {% endif %}
      {% endfor %}
    {% endif %}
  {% endfor %}
</div>
</div>

<style type="text/css">
.preaction-carousel-container {
   width: 100%;
   height:230px;
   margin-bottom:2em;
}
.video_wrapper {
  background-image: url(/assets/images/loading.gif);
  background-size: 280px 180px;
}
.video-iframe {
  background-image: url(/assets/images/loading.gif)
  background-repeat: no-repeat;
}
</style>
<script type="text/javascript">

document.addEventListener("DOMContentLoaded", function () {
  document.getElementById("iframe_cc").src = "//www.streamtext.net/player?event=Ollyfest&controls=0&header=0&scroll=1"
});

var carouselIv = null
window.onloadqueue=(window.onloadqueue||[]).concat([function () {

  $.getScript( "//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js", function( data, textStatus, jqxhr ) {
    carouselIv = setInterval(loadCarousel,200);
  })

}])
function loadCarousel() {
    clearInterval(carouselIv)
    $('.preaction-carousel div').randomize()
    $('.preaction-carousel').slick({
      dots: false,
      infinite: true,
      speed: 300,
      slidesToShow: 1,
      centerMode: true,
      variableWidth: true
    })
    $('.preaction-carousel-box').detach().appendTo(".preaction-carousel-container");
}
</script>

<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="/assets/slick/slick-theme.css"/>
