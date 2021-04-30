---
layout: default
title:  "Virtual Swag Bag"
permalink: /swag-bag
---
{% assign video_background_url="https://raw.githubusercontent.com/o11yfest/o11yfest.org/main/assets/images/o11yfest2021-video-background.jpg" %}

<div class="flexbox" style="align-items:center;">

  <div style="flex:1;min-width:450px;">

<h1 style="margin-top:0px;">Virtual Video Background</h1>

Feel free to use <a href="{{ video_background_url }}" target="_blank">this background</a> in your video conferencing platform to express
 your excitement for this event and help us promote awareness in observability!

  </div>
  <div style="flex:1;min-width:250px;max-width:250px;margin-top:1em;">
    <div style="margin: auto auto;">
    <a href="{{ video_background_url }}" target="_blank"><img src="assets/images/o11yfest2021-video-background.jpg" style="width:100%;border-radius:1em;" /></a>
    </div>
  </div>

</div>

<div id="already-purchased" style="display:none;visibility:hidden;color:red;font-size:2em;">
It appears that you have already purchased a swag bag. Though you may buy more,
 we just wanted to reminder you if you forgot you already did this.
</div>

# Limited run o11yfest 2021 swag bag
We have 300 swag bags, including:

-  a 6"x6" observability magnet sheet
- a tiny o11y Tech Deck fingerboard
- matching 3"x3" tiny stickers pack
- some OpenTelemetry stickers (thank you Lightstep!)
- a few other cool things from our sponsors

All we need from you is a shipping address and payment enough to cover shipping.

<div style="margin:2em;text-align:center;" markdown="1">

***ORDER BEFORE MAY 8 TO GET IT IN TIME FOR THE EVENT ON MAY 17-18!!!***

</div>

<div id="smart-button-container">
      <div style="text-align: center;">
        <div id="paypal-button-container"></div>
      </div>
    </div>
  <script src="https://www.paypal.com/sdk/js?client-id=Adr9M_sh5uiIYikCAzbRknzt9oInVif1VbnbY3YGJ4jBrcg79vnzQ_Z9HDUbH0Reh2ECpAi9NkVb4vef&currency=USD" data-sdk-integration-source="button-factory"></script>
  <script>
    function initPayPalButton() {
      paypal.Buttons({
        style: {
          shape: 'pill',
          color: 'gold',
          layout: 'horizontal',
          label: 'buynow',

        },

        onShippingChange: function(data, actions) {
          // Reject non-US addresses
          var countryCodes = ['US','CA'];
          var found = false;
          for(var i=0; i<countryCodes.length; i++) { found = (data.shipping_address.country_code === countryCodes[i]); if(found) { break; } }
          if (!found) {
              try {
                setTimeout(function() {
                  alert("Apologies, but we currently cannot ship to those outside the US and Canada.");
                },100);
              } catch(e) {
                console.error(e)
              }
              return actions.reject();
          }
        },

        createOrder: function(data, actions) {
          return actions.order.create({
            purchase_units: [{"description":"o11yfest 2021 Virtual Swag Bag","amount":{"currency_code":"USD","value":15,"breakdown":{"item_total":{"currency_code":"USD","value":5},"shipping":{"currency_code":"USD","value":10},"tax_total":{"currency_code":"USD","value":0}}}}]
          });
        },

        onApprove: function(data, actions) {
          return actions.order.capture().then(function(details) {
            alert('Thank you, ' + details.payer.name.given_name + '!');
            try {
              $.cookie("swag", (new Date()).getTime());
            } catch(e) {
              console.error(e);
            }
            window.location.href = '/paypal-thanks';
          });
        },

        onError: function(err) {
          console.log(err);
        }
      }).render('#paypal-button-container');
    }
    initPayPalButton();
  </script>

If you haven't already registered for the event, <a href="{{ site.registration_link }}" use-same-tab="false">please do so separately</a>.

<p>
<img src="/assets/images/swag-promo.png"
     style="width:100%;border-radius:2em;"
     title="o11yfest 2021 limited run virtual swag bag" />
</p>

<script type="text/javascript">
window.onloadqueue=(window.onloadqueue||[]).concat([function () {
  var already = $.cookie("swag");
  if(already != undefined && (already+"").trim().length > 0) {
    $('#already-purchased').css('visibility','visible').show();
  }
}]);
</script>
