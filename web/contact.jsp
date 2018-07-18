<%-- 
    Document   : contact
    Created on : 27/03/2017, 7:02:55 PM
    Author     : Gavin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>EmpoweringWA</title>

        <!-- Bootstrap -->
        <%@include file="bootstrap.jsp" %>
        <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <style>
            a:link {
                text-decoration: none;
            }

            a:visited {
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }

            a:active {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
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
                            <li role="presentation"><a href="mapping.jsp">Emergencies</a></li>
                            <li role="presentation" class="active"><a href="contact.jsp">Contact</a></li>						
                        </ul>
                    </div>
                </div>			
            </div>
        </nav>

        <div class="breadcrumb">
            <h2>Contact</h2>
        </div>

        <div class="map">
            <!--            <div id="google-map" data-latitude="-37.877010" data-longitude="145.044267"></div>-->
            <div id="google-map"></div>
            <script src="js/contactmap.js" type="text/javascript"></script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDYHIrSIjTBKS9YfKZlx554Fs63fcKY-0g&callback=initMap"
            async defer></script>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6" style="text-align: center">
                    <div class="recent">
                        <h3>Get in touch with us</h3>
                    </div>
                    <div class="">
                        <p>Do you have any problem why the website? <br>Are you struggling
                            in finding any information? </p>
                        <p>We are here to help you with all your technical problems 
                            related to the website. <br>Send us an email and we will be back to you as soon as 
                            possible.</p>
                        <br>
                        <h4>Email to us:</h4><a href="mailto:empoweringwa@gmail.com"><p><i class="fa fa-envelope"></i> empoweringwa@gmail.com</p></a> <br>

                    </div>										
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>

        <br> <br> <br>

        <%@include file="footer.jsp" %>

