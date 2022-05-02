---
layout: default
title:  "Agenda"
permalink: /agenda
---

{% include 2022-cta-buttons.html %}

<script type="text/javascript">
window.onloadqueue=(window.onloadqueue||[]).concat([function () {
  $( "#tabs" ).tabs();
  $('.day-title').each((i,o) => {
    var tab = $(o).closest('.daytab')
    var day = parseInt(tab.attr('id').replace('day-',''))
    var daytext = 'Day '+day
    $(o).text($(o).text().replace(daytext+":","").trim())
  })
  $('div.special_table + table').each((i,table) => {
    $(table.rows).each((j,row) => {
      var tab = $(row).closest('.daytab')
      var day = parseInt(tab.attr('id').replace('day-',''))
      var adddays = day - 1;
      var cell0 = $(row.cells[0]);
      if(j>0) {
        var datestr = '5/9/2022 ' + cell0.text() + ' EDT'
        var dt = new Date(datestr)
        dt.setDate(dt.getDate() + adddays)
        //console.log(datestr + " --- " + dt + " --- " + $(row.cells[1]).text())
        cell0.text(dt.toLocaleTimeString())
      } else {
        var tz = Intl.DateTimeFormat().resolvedOptions().timeZone
        var zone = new Date().toLocaleTimeString('en-us',{timeZoneName:'short'}).split(' ')[2]
        cell0.css('white-space','nowrap').html('Time (in '+zone+')')
      }
    })
  })
}]);
</script>

<div id="tabs">
  <ul>
    <li><a href="#day-1">Monday, Day 1</a></li>
    <li><a href="#day-2">Tuesday, Day 2</a></li>
    <li><a href="#day-3">Wednesday, Day 3</a></li>
    <li><a href="#day-4">Thursday, Day 4</a></li>
  </ul>
  <div id="day-1" class="daytab" markdown=1>
  <h2 class="day-title">Day 1: o11y from the outset (core concepts, getting started)</h2>

<div class="special_table"></div>

| Time (in EST) | Session |
|-----------------------|----------------|
| 11:00 AM	|	Welcome & Intros |
| 11:15 AM	|	[Alex Boten: How the OpenTelemetry Collector puts you in the driver seat](/speakers/alex-boten) |
| 11:38 AM	|	Live Q&A	Alex Boten |
| 11:50 AM	|	[Reese Lee: Where the heck are my spans?!](/speakers/reese-lee) |
| 12:04 PM	|	Live Q&A	Reese Lee |
| 12:10 PM	|	[Cribl Workshop: Take Control of Observability Data With No Vendor Lock-In](/2022/sponsors/cribl) |
| 12:10 PM	|	[Henrik Rexed: The Sound of Code - Instrument with OpenTelemetry](/speakers/henrik-rexed) |
| 12:34 PM	|	Live Q&A	Henrik Rexed |
| 12:40 PM	|	Async and bio break |
| 1:00 PM	|	[Vineeth Pothulapati: Easing OpenTelemetry adoption using the OpenTelemetry operator](/speakers/vineeth-pothulapati) |
| 1:25 PM	|	Live Q&A	Vineeth Pothulapati |
| 1:35 PM	|	[Jessica Kerr:	Observability During Development](/speakers/jessica-kerr) |
| 1:45 PM	|	Live Q&A	Jessica Kerr |
| 2:00 PM	|	o11yfest: what, why, how?	Paul Bruce, Video, pre-CCd |
| 2:10 PM	|	[Martin Mao: Is MTTR still relevant in a modern, cloud native world?](/speakers/martin-mao) |
| 2:22 PM	|	Live Q&A	Martin Mao |
| 2:30 PM	|	[Ted Young (2021): The Value and Design of OpenTelemetry](/speakers/ted-young) |
| 2:48 PM	|	Daily Wrap-up, on to Day 2 |

  </div>

  <div id="day-2" class="daytab" markdown=1>
  <h2 class="day-title">Day 2: o11y hits the trail (hands-on, deep-dives)</h2>

<div class="special_table"></div>

| Time (in EST) | Session |
|-----------------------|----------------|
| 11:00 AM	|	Welcome back & reminders |
| 11:15 AM	|	[Ricardo Ferreira: Building Software Reliability with Distributed Tracing](/speakers/ricardo-ferreira) |
| 11:46 AM	|	Live Q&A	Ricardo Ferreira |
| 12:00 PM	|	Book Club, Speed Networking, Booth Exploration |
| 1:00 PM	|	[Shai Almog: Debugging at Scale in Production - Deep into your Containers with kubectl debug, KoolKits...](/speakers/shai-almog) |
| 1:22 PM	|	Live Q&A	Shai Almog |
| 1:30 PM	|	[Andreas Grabner: Keptn - Putting Observability in the driving seat for DevOps & SRE automation](/speakers/andreas-grabner) |
| 1:50 PM	|	Live Q&A	Andreas Grabner |
| 2:00 PM	|	[Ramon Guiu: Going deep into the (mis)behaviors of your distributed systems with OpenTelemetry and SQL](/speakers/ramon-guiu) |
| 2:26 PM	|	Live Q&A	Ramon Guiu |
| 2:40 PM	|	[Colin Douch: High Cardinality Alerting With Open Telemetry](/speakers/colin-douch) |
| 2:54 PM	|	Daily Wrap-up, on to Day 3 |
| 6:00 PM | [Elastic Workshop: Application observability on Kubernetes with Elastic](/2022/sponsors/elastic) |

  </div>

  <div id="day-3" class="daytab" markdown=1>
  <h2 class="day-title">Day 3: o11y climbs the mountain (scaling to many teams)</h2>

<div class="special_table"></div>

| Time (in EST) | Session |
|-----------------------|----------------|
| 11:00 AM | Welcome back & reminders |
| 11:15 AM | [Stephen Townshend: Bad Observability](/speakers/stephen-townshend) |
| 11:39 AM | Pre-recorded Q&A	Stephen Townshend |
| 11:50 AM | o11yfest: what, why, how?	Paul Bruce, Video, pre-CCd |
| 12:00 PM | [New Relic Workshop: K8s observability with Prometheus, Pixie, Fluent Bit and New Relic](/2022/sponsors/newrelic) |
| 12:00 PM | [Daniel Selans: Observability in Event Driven](/speakers/daniel-selans) |
| 12:23 PM | Live Q&A	David Selans |
| 12:30 PM | [Daniel Gomez Blanco (2021): How to transparently migrate 300+ services to OpenTelemetry](/speakers/daniel-gomez-blanco) |
| 1:00 PM | [Adrian Gonzalez: Enterprise Observability through User Telemetry](/speakers/adrian-gonzalez) |
| 1:22 PM | Live Q&A	Adrian Gonzalez |
| 1:40 PM | [Michael Hausenblas: Return on Investment driven observability](/speakers/michael-hausenblas) |
| 1:50 PM | Live Q&A	Michael Hausenblas |
| 2:15 PM | About Our Captioning |
| 2:20 PM | About Our Graphic Recordings |
| 2:25 PM | Panel: OTel - So far/good?	Ted Young, Daniel Gomez Blanco, Mike Angstadt |
| 2:55 PM | Daily Wrap-up, on to Day 3 |

  </div>

<div id="day-4" class="daytab" markdown=1>
<h2 class="day-title">Day 4: o11y explores the wild (interesting use cases)</h2>

<div class="special_table"></div>

| Time (in EST) | Session |
|-----------------------|----------------|
| 11:00 AM | Welcome back & reminders |
| 11:15 AM | [Narmatha Bala: Confidence in Chaos - How properly applied observability practices can take the chaos out of testing](/speakers/narmatha-bala) |
| 11:35 AM | Live Q&A	Narmatha Bala |
| 12:00 PM | [Lightstep Workshop: Getting familiar with the OpenTelemetry Collector](/2022/sponsors/lightstep) |
| 12:00 PM | [Michael Haberman: Trace-Based Testing with OpenTelemetry](/speakers/michael-haberman) |
| 12:24 PM | Live Q&A	Michael Haberman, Stacy Cashmore |
| 12:35 PM | [Piyush Verma: Building Openmetrics Exporter](/speakers/piyush-verma) |
| 12:56 PM | Pre-recorded Q&A	Piyush Verma |
| 1:00 PM | [Prathima Janakiram: Self Service FSO deployments with Workflows](/speakers/prathima-janakiram) |
| 1:20 PM | [Juraci Paixão Kröhling (2021): Sampling in Distributed Tracing](/speakers/juraci-paixao-krohling) |
| 1:45 PM | [Zoe Steinkamp: Cleaning and Interpreting time series metrics with InfluxDB](/speakers/zoe-steinkamp) |
| 2:05 PM | Live Q&A	Zoe Steinkamp |
| 2:10 PM | o11yfest Awards |
| 2:25 PM | o11yfest Future Plans |
| 2:40 PM | Organizer Thanks and Wrap	All Organizers |

  </div>

</div>
