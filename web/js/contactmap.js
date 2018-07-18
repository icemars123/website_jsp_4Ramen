/* global google */

var gMapAPIKey = 'AIzaSyDYHIrSIjTBKS9YfKZlx554Fs63fcKY-0g';

var map, infoWindow;
function initMap() {
    var ramenCaulfield = {lat: -37.877010, lng: 145.044267};


    map = new google.maps.Map(document.getElementById('google-map'), {
        'center': ramenCaulfield,
        'zoom': 11,
        'mapTypeId': google.maps.MapTypeId.ROADMMAP,
        'draggable': true,
        'scrollwheel': false
    });

    var popupContentRamenCaulfield = 'Empowering Women\'s Awareness<br>';
    popupContentRamenCaulfield += 'Dandenong Rd<br>';
    popupContentRamenCaulfield += 'Caulfield East VIC';


    var infowindowRamenCaulfield = new google.maps.InfoWindow({
        'content': popupContentRamenCaulfield,
        'maxWidth': 200
    });

    var markerRamenCaulfield = new google.maps.Marker({
        'position': ramenCaulfield,
        'map': map,
        'title': 'Empowering Women\'s Awareness in Caulfield'
    });


    markerRamenCaulfield.addListener('click', function () {
        infowindowRamenCaulfield.open(map, markerRamenCaulfield);
    });


//    function geocodeAddress(address) {
//
//        var geocoder = new google.maps.Geocoder();
//
//        geocoder.geocode({'address': address}, function (results, status) {
//            if (status === google.maps.GeocoderStatus.OK) {
//                console.log('Geocoded address: ', results[0].geometry.location.toString());
//            } else {
//                alert('Geocode was not successful for the following reason: ' + status);
//            }
//        });
//    }
//    infoWindow = new google.maps.InfoWindow;
//
//
//    var image = 'http://www.robotwoods.com/dev/misc/bluecircle.png';
//
//
//    // Try HTML5 geolocation.
//    if (navigator.geolocation) {
//        navigator.geolocation.getCurrentPosition(function (position) {
//            var pos = {
//                lat: position.coords.latitude,
//                lng: position.coords.longitude
//            };
//
//            infoWindow.setPosition(pos);
//            infoWindow.setContent('You are here!');
//
//            var blueMarker = new google.maps.Marker({
//                position: pos,
//                map: map,
//                icon: image
//            });
//
//            infoWindow.open(map);
//            map.setCenter(pos);
//        }, function () {
//            handleLocationError(true, infoWindow, map.getCenter());
//        });
//    } else {
//        // Browser doesn't support Geolocation
//        handleLocationError(false, infoWindow, map.getCenter());
//    }

}


//function handleLocationError(browserHasGeolocation, infoWindow, pos) {
//    infoWindow.setPosition(pos);
//    infoWindow.setContent(browserHasGeolocation ?
//            'Error: The Geolocation service failed.' :
//            'Error: Your browser doesn\'t support geolocation.');
//    infoWindow.open(map);
//}

