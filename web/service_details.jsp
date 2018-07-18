<%-- 
    Document   : infomation
    Created on : 02/04/2017, 3:35:25 AM
    Author     : Gavin
--%>
<%@page import="java.lang.String"%>
<%@page import="java.util.*, com.ramen.model.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="service" scope="session" class="com.ramen.model.Service" />
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
                height: 500px;
                width: auto;
                text-align: center;
                position: relative;
            }
            /* Optional: Makes the sample page fill the window. */
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }
            #floating-service-panel {
                height: 45px;
                margin-top: 5px;
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
        </style>
    </head>
    <body>
        <%@include file="navigation.jsp" %>
        <div class="breadcrumb">
            <h2><%=service.getName()%></h2>
        </div>

        <div class="container">
            <div style="max-height: 500px; overflow: auto; position: relative; text-align: left;" class="table-bordered">
                <div class="row srow table-bordered" id="header" style="text-align: center;">
                    <div class="col-md-12 col-sm-12 col-xs-12">Service Information</div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Service Name:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><%=service.getName()%></div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Category:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><%=service.getCategory()%></div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Service Provider:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><%=service.getServiceProvider()%></div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Description:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><%=service.getDescription()%></div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Street/Road:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><%=service.getLocation()%></div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Suburb:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><%=service.getSuburb()%></div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Postcode:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><%=service.getPostcode()%></div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Phone:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><%=service.getPhone1()%></div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Email:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><%=service.getEmail()%></div>
                </div>
                <div class="row srow table-bordered">
                    <div class="col-md-4 col-sm-4  col-xs-4">Website:</div>
                    <div class="col-md-8 col-sm-8  col-xs-8"><a style="color: #00F" href="http://<%=service.getWebsite1()%>"><%=service.getWebsite1()%></a></div>
                </div>
            </div>

            <br> <br>

            <%
//                String addressInfo = "";
//                addressInfo = (String) service.getLocation2() + "," + service.getSuburb();
//                out.print(addressInfo);
%>
<!--            <div>
                <%=service.getName()%><br>
                <%=service.getLocation2()%><br>
            </div>-->
            <div id="floating-service-panel">
                <input id="address" type="hidden" value="<%=service.getLocation2() + "," + service.getSuburb()%>">
                <input id="submit_location" type="button" value="Find the service">
                <input id="submit_hospitals" type="button" value="Find the Hospitals">
                <input id="submit_police" type="button" value="Find the police station">
            </div>
            <div id="service-map"></div>
            <script>
                var map, myLocation;
                var markers = [];
                var markers2 = [];
                function initMap() {
                    map = new google.maps.Map(document.getElementById('service-map'), {
                        zoom: 12,
                        center: {lat: -37.813628, lng: 144.963058}
                    });

                    var myMarker = new google.maps.Marker({
                        map: map,
                        animation: google.maps.Animation.DROP,
                    });
                    addYourLocationButton(map, myMarker);

                    var geocoder = new google.maps.Geocoder();

                    document.getElementById('submit_location').addEventListener('click', function () {
                        geocodeAddress(geocoder, map);
                    });
                    document.getElementById('submit_hospitals').addEventListener('click', function () {
                        findHospital();
                    });

                    document.getElementById('submit_police').addEventListener('click', function () {
                        findPoliceStation();
                    });
                }

                function geocodeAddress(geocoder, resultsMap) {
                    clearMarkers();
                    clearMarkers2();
                    var address = document.getElementById('address').value;
                    geocoder.geocode({'address': address}, function (results, status) {
                        if (status === 'OK') {
                            resultsMap.setCenter(results[0].geometry.location);
//                            var infowindowService = new google.maps.InfoWindow({
//                                'content': popupContentService,
//                                'maxWidth': 200
//                            });

                            var marker = new google.maps.Marker({
                                map: resultsMap,
                                position: results[0].geometry.location,
                                label: 'S'
                            });
//                            marker.addListener('click', function () {
//                                infowindowService.open(map, maker);
//                            });
                            markers2.push(marker);
                            myLocation = results[0].geometry.location;
                        } else {
                            alert('Geocode was not successful for the following reason: ' + status);
                        }
                    });
                }

                function addYourLocationButton(map, marker)
                {
                    var controlDiv = document.createElement('div');

                    var firstChild = document.createElement('button');
                    firstChild.style.backgroundColor = '#fff';
                    firstChild.style.border = 'none';
                    firstChild.style.outline = 'none';
                    firstChild.style.width = '28px';
                    firstChild.style.height = '28px';
                    firstChild.style.borderRadius = '2px';
                    firstChild.style.boxShadow = '0 1px 4px rgba(0,0,0,0.3)';
                    firstChild.style.cursor = 'pointer';
                    firstChild.style.marginRight = '10px';
                    firstChild.style.padding = '0px';
                    firstChild.title = 'Your Location';
                    controlDiv.appendChild(firstChild);

                    var secondChild = document.createElement('div');
                    secondChild.style.margin = '5px';
                    secondChild.style.width = '18px';
                    secondChild.style.height = '18px';
                    secondChild.style.backgroundImage = 'url(https://maps.gstatic.com/tactile/mylocation/mylocation-sprite-1x.png)';
                    secondChild.style.backgroundSize = '180px 18px';
                    secondChild.style.backgroundPosition = '0px 0px';
                    secondChild.style.backgroundRepeat = 'no-repeat';
                    secondChild.id = 'you_location_img';
                    firstChild.appendChild(secondChild);

                    google.maps.event.addListener(map, 'dragend', function () {
                        $('#you_location_img').css('background-position', '0px 0px');
                    });

                    firstChild.addEventListener('click', function () {
                        var imgX = '0';
                        var animationInterval = setInterval(function () {
                            if (imgX == '-18')
                                imgX = '0';
                            else
                                imgX = '-18';
                            $('#you_location_img').css('background-position', imgX + 'px 0px');
                        }, 500);
                        if (navigator.geolocation) {
                            navigator.geolocation.getCurrentPosition(function (position) {
                                var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
                                marker.setPosition(latlng);
                                map.setCenter(latlng);
                                clearInterval(animationInterval);
                                $('#you_location_img').css('background-position', '-144px 0px');
                                myLocation = latlng;
                            });
                        } else {
                            clearInterval(animationInterval);
                            $('#you_location_img').css('background-position', '0px 0px');
                        }
                    });

                    controlDiv.index = 1;
                    map.controls[google.maps.ControlPosition.RIGHT_BOTTOM].push(controlDiv);
                }

                $(document).ready(function (e) {
                    initMap();
                });

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
                    if (status !== google.maps.places.PlacesServiceStatus.OK) {
                        return;
                    } else {
                        createMarkers(results);

                    }
                }

                function createMarkers(places) {
                    var bounds = new google.maps.LatLngBounds();
                    var placesList = document.getElementById('places');

                    for (var i = 0, place; place = places[i]; i++) {
                        var image = {
                            url: place.icon,
                            size: new google.maps.Size(71, 71),
                            origin: new google.maps.Point(0, 0),
                            anchor: new google.maps.Point(17, 34),
                            scaledSize: new google.maps.Size(25, 25)
                        };

                        var popupContentNearby = place.name;

                        var infowindowNearby = new google.maps.InfoWindow({
                            content: popupContentNearby,
                            maxWidth: 200
                        });

                        var marker = new google.maps.Marker({
                            map: map,
                            icon: image,
                            title: place.name,
                            animation: google.maps.Animation.DROP,
                            position: place.geometry.location
                        });
                        markers.push(marker);

                        bounds.extend(place.geometry.location);
                    }
                    map.fitBounds(bounds);
                }

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
        </div>

        <%@include file="footer.jsp" %>

