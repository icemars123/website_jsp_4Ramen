<%-- 
    Document   : mapping
    Created on : 03/05/2017, 8:50:28 PM
    Author     : Gavin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>EmpoweringWA</title>

        <!-- Bootstrap -->
        <%@include file="bootstrap.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <style>
            /* Always set the map height explicitly to define the size of the div
             * element that contains the map. */
            #service-map {
                height: 100%;
                width: 100%;
                text-align: center;
                position: relative;
            }
            /* Optional: Makes the sample page fill the window. */
            html, body{
                height: 100%;
                margin: 0;
                padding: 0;
            }
            #floating-service-panel {
                margin-left: 120px;
                position: absolute;
                /*        top: 10px;
                        left: 25%;*/
                z-index: 5;
                background-color: #fff;
                padding: 5px;
                border: 1px solid #999;
                text-align: center;
                font-family: 'Roboto','sans-serif';
                line-height: 30px;
                padding-left: 5px;
            }

            #description {
                font-family: Roboto;
                font-size: 15px;
                font-weight: 300;
            }

            #infowindow-content .title {
                font-weight: bold;
            }

            #infowindow-content {
                display: none;
            }

            #service-map #infowindow-content {
                display: inline;
            }

            .pac-card {
                margin: 40px 10px 0px 0;
                border-radius: 2px 0 0 2px;
                box-sizing: border-box;
                -moz-box-sizing: border-box;
                outline: none;
                box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
                background-color: #fff;
                font-family: Roboto;
            }

            #pac-container {
                padding-bottom: 12px;
                margin-right: 12px;
            }

            .pac-controls {
                display: inline-block;
                padding: 5px 11px;
            }

            .pac-controls label {
                font-family: Roboto;
                font-size: 13px;
                font-weight: 300;
            }

            #pac-input {
                background-color: #fff;
                font-family: Roboto;
                font-size: 15px;
                font-weight: 300;
                margin-left: 12px;
                padding: 0 11px 0 13px;
                text-overflow: ellipsis;
                width: 250px;
            }

            #pac-input:focus {
                border-color: #4d90fe;
            }

        </style>
    </head>
    <body style="background: #eee">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><span style="font-family: 'Rouge Script', cursive; font-weight: bolder; text-shadow: 1px 1px 2px #082b34;">EmpoweringWA</span></a>
                </div>
                <div class="navbar-collapse collapse">							
                    <div class="menu">
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation"><a href="index.jsp">Home</a></li>
                            <li role="presentation"><a href="quiz.jsp">Explore</a></li>
                            <li role="presentation"><a href="search.jsp">Services</a></li>
                            <li role="presentation" class="active"><a href="mapping.jsp">Emergencies</a></li>
                            <li role="presentation"><a href="contact.jsp">Contact</a></li>						
                        </ul>
                    </div>
                </div>			
            </div><!--container-->
        </nav>
        <div class="breadcrumb" style="margin-bottom: 0px">
            <h2 style="text-align:center">Emergencies</h2>
        </div>

        <div class="container">
            <div class="row">
                <p style="text-align: left; font-size: larger; line-height: 180%">
                    The map shows several support services in Melbourne. Zoom and click on them to 
                    get more information. Enter a location (such as suburb, address and organization name) in the 
                    search box and find hospitals and police stations by clicking the respective buttons. 
                </p>
            </div>
        </div>

        <div id="floating-service-panel">
            <!--            <input id="address" type="textbox" value="" style="width:200px" placeholder="enter a location">-->
            <!--            <input id="submit_location" type="button" value="Find the location">-->
            <input id="submit_hospitals" type="button" value="Hospitals">
            <input id="submit_police" type="button" value="Police Stations">
        </div>

        <div class="pac-card col-md-3" id="pac-card">
            <div>
                <div id="type-selector" class="pac-controls">
                    <input type="radio" name="type" id="changetype-all" checked="checked">
                    <label for="changetype-all">All</label>

                    <input type="radio" name="type" id="changetype-establishment">
                    <label for="changetype-establishment">Establishments</label>

                    <input type="radio" name="type" id="changetype-address">
                    <label for="changetype-address">Addresses</label>

                </div>
                <div id="strict-bounds-selector" class="pac-controls">
                    <input type="checkbox" id="use-strict-bounds" value="">
                    <label for="use-strict-bounds">Limit the search on the current map</label>
                </div>
            </div>
            <div id="pac-container">
                <input id="pac-input" type="text"
                       placeholder="Enter a location">
            </div>
        </div>

        <div id="service-map"></div>
        <div id="infowindow-content">
            <img src="" width="16" height="16" id="place-icon">
            <span id="place-name"  class="title"></span><br>
            <span id="place-address"></span>
        </div>
        <script>
            var map, myLocation;
            var markers = [];
            var markers2 = [];
            var infowindow2;
            function initMap() {
                map = new google.maps.Map(document.getElementById('service-map'), {
                    zoom: 13,
                    center: {lat: -37.813628, lng: 144.963058},
                    'mapTypeId': google.maps.MapTypeId.ROADMMAP,
                    'scrollwheel': false
                });

                var layer = new google.maps.FusionTablesLayer({
                    map: map,
                    heatmap: {enabled: false},
                    query: {
                        select: 'latitude',
                        from: '1V3E1_1SB5OLx3CAJ0skYto_ivibdXcLv5xbSjncs'
                    },
                    options: {
                        styleId: 2,
                        templateId: 2
                    }
                });
                layer.setMap(map);



//                var geocoder = new google.maps.Geocoder();


//                document.getElementById('submit_location').addEventListener('click', function () {
//                    geocodeAddress(geocoder, map);
//                });


                var card = document.getElementById('pac-card');
                var input = document.getElementById('pac-input');
                var types = document.getElementById('type-selector');
                var strictBounds = document.getElementById('strict-bounds-selector');

                map.controls[google.maps.ControlPosition.TOP_RIGHT].push(card);

                var autocomplete = new google.maps.places.Autocomplete(input);

                // Bind the map's bounds (viewport) property to the autocomplete object,
                // so that the autocomplete requests use the current map bounds for the
                // bounds option in the request.
                autocomplete.bindTo('bounds', map);

                var infowindow = new google.maps.InfoWindow();
                var infowindowContent = document.getElementById('infowindow-content');
                infowindow.setContent(infowindowContent);
                var marker = new google.maps.Marker({
                    map: map,
                    anchorPoint: new google.maps.Point(0, -29)
                });


                autocomplete.addListener('place_changed', function () {
                    infowindow.close();
                    marker.setVisible(false);
                    var place = autocomplete.getPlace();
                    if (!place.geometry) {
                        // User entered the name of a Place that was not suggested and
                        // pressed the Enter key, or the Place Details request failed.
                        window.alert("No details available for input: '" + place.name + "'");
                        return;
                    }

                    // If the place has a geometry, then present it on a map.
                    if (place.geometry.viewport) {
                        map.fitBounds(place.geometry.viewport);
                    } else {
                        map.setCenter(place.geometry.location);
                        map.setZoom(17);  // Why 17? Because it looks good.
                    }
                    marker.setPosition(place.geometry.location);
                    marker.setVisible(true);
                    markers2.push(marker);
                    myLocation = place.geometry.location;

                    var address = '';
                    if (place.address_components) {
                        address = [
                            (place.address_components[0] && place.address_components[0].short_name || ''),
                            (place.address_components[1] && place.address_components[1].short_name || ''),
                            (place.address_components[2] && place.address_components[2].short_name || '')
                        ].join(' ');
                    }

                    infowindowContent.children['place-icon'].src = place.icon;
                    infowindowContent.children['place-name'].textContent = place.name;
                    infowindowContent.children['place-address'].textContent = address;
                    infowindow.open(map, marker);
                });

                // Sets a listener on a radio button to change the filter type on Places
                // Autocomplete.
                function setupClickListener(id, types) {
                    var radioButton = document.getElementById(id);
                    radioButton.addEventListener('click', function () {
                        autocomplete.setTypes(types);
                    });
                }

                setupClickListener('changetype-all', []);
                setupClickListener('changetype-address', ['address']);
                setupClickListener('changetype-establishment', ['establishment']);
//                setupClickListener('changetype-geocode', ['geocode']);

                document.getElementById('use-strict-bounds')
                        .addEventListener('click', function () {
                            console.log('Checkbox clicked! New state=' + this.checked);
                            autocomplete.setOptions({strictBounds: this.checked});
                        });

                document.getElementById('submit_hospitals').addEventListener('click', function () {
                    findHospital();
                });

                document.getElementById('submit_police').addEventListener('click', function () {
                    findPoliceStation();
                });
                infowindow2 = new google.maps.InfoWindow();
            }
//            function geocodeAddress(geocoder, resultsMap) {
//                clearMarkers();
//                clearMarkers2();
//                var address = document.getElementById('address').value;
//                geocoder.geocode({'address': address}, function (results, status) {
//                    if (status === 'OK') {
//                        resultsMap.setCenter(results[0].geometry.location);
//                        var marker = new google.maps.Marker({
//                            map: resultsMap,
//                            position: results[0].geometry.location
//                        });
//                        markers2.push(marker);
//                        myLocation = results[0].geometry.location;
//                    } else {
//                        alert('Geocode was not successful for the following reason: ' + status);
//                    }
//                });
//            }

            function findHospital() {

                clearMarkers();
                var service = new google.maps.places.PlacesService(map);
                service.nearbySearch({
                    location: myLocation,
                    radius: 4000,
                    types: ['hospital']
                }, processResults);
            }
            function findPoliceStation() {
                clearMarkers();
                var service = new google.maps.places.PlacesService(map);
                service.nearbySearch({
                    location: myLocation,
                    radius: 4000,
                    types: ['police']
                }, processResults);
            }
            function processResults(results, status, pagination) {
//                if (status !== google.maps.places.PlacesServiceStatus.OK) {
//                    return;
//                } else {
//                    createMarkers(results);
//
//                }

                if (status === google.maps.places.PlacesServiceStatus.OK) {
                    for (var i = 0; i < results.length; i++) {
                        createMarker(results[i]);
                    }
                }
            }

            function createMarker(place) {
                var placeLoc = place.geometry.location;
                var image = {
                    url: place.icon,
                    size: new google.maps.Size(71, 71),
                    origin: new google.maps.Point(0, 0),
                    anchor: new google.maps.Point(17, 34),
                    scaledSize: new google.maps.Size(25, 25)
                };
                var marker = new google.maps.Marker({
                    map: map,
                    icon: image,
                    title: place.name,
                    animation: google.maps.Animation.DROP,
                    position: place.geometry.location
                });

                google.maps.event.addListener(marker, 'click', function () {
                    infowindow2.setContent(place.name);
                    infowindow2.open(map, this);
                });
                markers.push(marker);
            }


//            function createMarkers(places) {
//                var bounds = new google.maps.LatLngBounds();
////                var placesList = document.getElementById('places');
//
//
//                for (var i = 0, place; place = places[i]; i++) {
//                    var image = {
//                        url: place.icon,
//                        size: new google.maps.Size(71, 71),
//                        origin: new google.maps.Point(0, 0),
//                        anchor: new google.maps.Point(17, 34),
//                        scaledSize: new google.maps.Size(25, 25)
//                    };
//
//                    var marker = new google.maps.Marker({
//                        map: map,
//                        icon: image,
//                        title: place.name,
//                        animation: google.maps.Animation.DROP,
//                        position: place.geometry.location
//                    });
//                    google.maps.event.addListener(marker, 'click', function () {
//                        infowindow2.setContent(place.name);
//                        infowindow2.open(map, this);
//                    });
//
//                    markers.push(marker);
//
//
//                    bounds.extend(place.geometry.location);
//                }
//                map.fitBounds(bounds);
//            }

            // Sets the map on all markers in the array.
            function setMapOnAll(map) {
                for (var i = 0; i < markers.length; i++) {
                    markers[i].setMap(map);
                }
            }

            // Removes the markers from the map, but keeps them in the array.
            function clearMarkers() {
                setMapOnAll(null);
            }

            function setMapOnAll2(map) {
                for (var i = 0; i < markers2.length; i++) {
                    markers2[i].setMap(map);
                }
            }

            function clearMarkers2() {
                setMapOnAll2(null);
            }



        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDYHIrSIjTBKS9YfKZlx554Fs63fcKY-0g&libraries=places&callback=initMap" async defer></script>

        <%@include file="footer.jsp" %>
