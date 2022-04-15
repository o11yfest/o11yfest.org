---
layout: default
title:  "About o11yfest"
permalink: /2022/preaction
---

{% include 2022-cta-buttons.html exclude_preaction=true %}

<div class="flexbox">

  <div style="flex:1;align-self:flex-start;text-align:center;min-width:300px;margin-top:1em;">
    <iframe width="400" height="224" src="https://www.youtube.com/embed/odN_JLFCmU0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    <div style="text-align:left;margin-top:1em;">

    <h3>Take (pre)Action!</h3>
    <div markdown=1>

1. Pick one of the following presentations that appeals to you the most,
2. Take notes while watching it, and then
3. Share your key takeaways in a 5-minute video.

<br />

NOTE: More speaker videos are coming soon!

</div>
</div>
  </div>

  <div style="flex:1;align-self:flex-start;text-align:center;">
  <div class="flexbox" style="text-align:left;">
    {% assign persons = site.data['2022-speakers'].items | where_exp: "person", "person.session_url" %}
    <ul id="preaction_list">
    {% for person in persons %}
      {% assign cta = "none" %}
      {% if person.session_url %}
        {% capture cta %}{{ person.session_url }}{% endcapture %}
        {% if person.preactions and person.preactions.size > 0 %}
          {% assign cta = "done" %}
        {% endif %}
      {% endif %}
      {% if cta == "none" %}
        <div class="tooltip"><span class="tooltiptext">This speaker has not submitted their video yet.</span>
        <div class="disabled">{{ person.name }} - {{ person.title }}</div></div>
      {% else %}
        {% if cta == "done" %}
        <!-- div class="tooltip"><span class="tooltiptext">We've already received some preactions!</span>
          {{ person.name }} - {{ person.title }}
        </div -->
        {% else %}
          <li>{{ person.name }} - {{ person.title }}<br /><a href="/speakers/{{ person.id }}">[session description]</a> | <a href="{{ cta }}">[presentation]</a><br /><br /></li>
        {% endif %}
      {% endif %}
    {% endfor %}
    </ul>
  </div>
  </div>

</div>

# What is a '(p)reaction' video?

A "PRE-action" video is a short (<5min) summary of what you think is ***meaningful***
 for others to pay attention to about another video or presentation by someone else.

Since we are receiving pre-recorded talks by speakers all the time, we can provide
 you a chance to "pre"-view them and share your reactions...hence "PRE-action".

# Why do a (p)reaction video?

Not only is this a great way to spread positivity about someone else, it also
 encodes how you process and what you value about the time and effort another
 practitioner has shared with the community.

Our event organizers also would ***love to highlight you*** because we believe that
 you are a material part of our community. When you 'lean forward' to share your
 unique perspective, we care. We're open to sharing this through out social channels
 and even during the LIVE STREAM because it takes all kinds to make a village!

# How can you get involved?

Firstly, email [organizers@o11yfest.org](mailto:organizers@o11yfest.org) and express
 your interest. We'll give you some options about the pre-recordings we've already
 received and get you way to watch it. While watching it:

* take some high-level notes while watching the presentation
* consolidate your points to about 3-4 key takeaways
* record yourself for about 3-5mins talking through your key takeaways
* make sure you comply with our [Code of Conduct](/code-of-conduct), avoid strong language etc.
* once done, store it somewhere online and reply back to organizer's email with the link

<style type="text/css">
.disabled { pointer-events: none; opacity: 0.5; }
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}

/* Tooltip text */
.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;

  /* Position the tooltip text - see examples below! */
  position: absolute;
  z-index: 1;
}
.glow {
  border-radius: 50%;
  -moz-box-shadow: 0 0 50px #fff;
  -webkit-box-shadow: 0 0 50px #fff;
  box-shadow: 0px 0px 50px #fff;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
  /*visibility: visible;*/
}

#preaction_list {
  /* visibility: hidden;*/
}
</style>
<script type="text/javascript">

  window.onloadqueue=(window.onloadqueue||[]).concat([function () {
    $('.disabled *').prop('disabled', true).attr("title","Video not available yet");

    $.fn.randomize=function(a){(a?this.find(a):this).parent().each(function(){$(this).children(a).sort(function(){return Math.random()-0.5}).detach().appendTo(this)});return this};

    $('#preaction_list li').randomize()
    $('#preaction_list').css('visibility','visible');
  }]);
</script>
