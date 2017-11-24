// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require cocoon
//= require gritter
//= require cable
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require turbolinks
//= require_tree .
   function initMap() {
      console.log("Init map");
   		map = new google.maps.Map(document.getElementById("map"), {
   		zoom: 15,
   		center: new google.maps.LatLng(54.38008248278, 18.60375881195),
   		mapTypeId: 'roadmap',
   		streetViewControl: false,
   		mapTypeControl: false
   	});
   	
   	var marker = new google.maps.Marker({
   		  position:  new google.maps.LatLng(54.37733616018838, 18.60883355140686),
   		  map: map,
   		  animation: google.maps.Animation.BOUNCE
   	});
   }

