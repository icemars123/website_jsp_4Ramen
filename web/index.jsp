<%-- 
    Document   : index
    Created on : 27/03/2017, 6:51:30 PM
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
            /*            div.services:hover{
                            box-shadow: 5px 5px 2.5px #888888;
                            cursor: pointer;
                        }*/
            div.services::after {
                content: "";
                border-radius: 5px;
                position: absolute;
                z-index: -1;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
                opacity: 0;
                -webkit-transition: all 0.6s cubic-bezier(0.165, 0.84, 0.44, 1);
                transition: all 0.6s cubic-bezier(0.165, 0.84, 0.44, 1);
            }

            div.services:hover {
                -webkit-transform: scale(1.25, 1.25);
                transform: scale(1.15, 1.15);
                cursor: pointer;
            }

            div.services:hover::after {
                opacity: 1;
            }

        </style>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("div#section_one").click(function () {
                    window.location.href = 'emergency.jsp';
                });
                $("div#section_two").click(function () {
                    window.location.href = 'communities.jsp';
                });
                $("div#section_three").click(function () {
                    window.location.href = 'tips.jsp';
                });
                $("div#section_four").click(function () {
                    window.location.href = 'search.jsp';
                });
                $("div#section_five").click(function () {
                    window.location.href = 'story.jsp';
                });
                $("div#section_six").click(function () {
                    window.location.href = 'statistics.jsp';
                });
            });
        </script>
    </head>
    <body style="background-color: #f9f9f9">
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
                            <li role="presentation"  class="active"><a href="index.jsp">Home</a></li>
                            <li role="presentation"><a href="quiz.jsp">Explore</a></li>
                            <li role="presentation"><a href="search.jsp">Services</a></li>
                            <li role="presentation"><a href="mapping.jsp">Emergencies</a></li>
                            <li role="presentation"><a href="contact.jsp">Contact</a></li>						
                        </ul>
                    </div>
                </div>			
            </div><!--container-->
        </nav>


        <div class="row" style="background-color:#f9f9f9">
            <div class="col-md-8">
                <div class="slider">
                    <div class="img-responsive">
                        <ul class="bxslider">				
                            <li><a href="emergency.jsp"><img src="img/HomePage1.png" alt=""/></a></li>	
                            <li><a href="mapping.jsp"><img src="img/HPpurple.png" alt=""/></a></li>
                        </ul>
                    </div>	
                </div>
            </div>
            <div class="col-md-4" style="background-color: #f9f9f9">
                <div class="slider" style="padding-left: 10px; padding-right: 15px">
                    <!--                    <div class="row" style="padding-top: 100px; padding-left: 40px; padding-right: 50px">-->
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                        <br>
                        <p style="font-size: x-large; line-height: 150%; text-align: left">
                            “In violence we forget<br> who we are” <br> (M. McCarty)
                        </p>
                        <ul style="text-align: left">
                            <!--<li style="font-size: larger; line-height: 160%"><a href="index.jsp" style="color: blue">In violence we forget who we are.</a></li>-->
                            <li style="font-size: x-large; line-height: 150%"><a href="quiz.jsp" style="color: blue">What kind of help do you need?</a></li>
                            <li style="font-size: x-large; line-height: 150%"><a href="statistics.jsp" style="color: blue">Are you in danger?</a></li>
                            <!--<li style="font-size: larger; line-height: 160%"><a href="mapping.jsp" style="color: blue">How mamy services could you find?</a></li>-->
                            <!--<li style="font-size: larger; line-height: 160%"><a href="search.jsp" style="color: blue">How could you find services?</a></li>-->
                        </ul>
                        <p style="font-size: x-large; line-height: 150%">Be safe. Prevent. Be free.</p>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
            </div>
            <!--                <div class="row"><p style="font-size: larger; line-height: 160%"><a href="quiz.jsp" style="color: blue">What kind of help do you need?</a></p></div>
                            <div class="row"><p style="font-size: larger; line-height: 160%"><a href="statistics.jsp" style="color: blue">Are you in danger?</a></p></div>
                            <div class="row"><p style="font-size: larger; line-height: 160%"><a href="mapping.jsp" style="color: blue">How mamy services could you find?</a></p></div>
                            <div class="row"><p style="font-size: larger; line-height: 160%"><a href="search.jsp" style="color: blue">How could you find services?</a></p></div>
                            <div class="row"><p style="font-size: larger; line-height: 160%">Be safe. Prevent. Be free.</p></div>-->

        </div>
    </div><!--row end-->
    <!--            </div> container end-->

    <section class="box">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.2s">
                        <div class="services" id="section_one">											
                            <div class="icons">
                                <i class="fa fa-flag fa-3x"></i>
                            </div>
                            <h3><a href="emergency.jsp" style="color: black">Is it a problem?</a></h3>
                            <p style="text-align: left">
                                Know more about the “red flags” to look out for and what measures 
                                you can take to be prepared for emergency situations.
                            </p>							
                        </div>
                    </div>
                    <hr>
                </div>


                <div class="col-md-4">
                    <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.4s">
                        <div class="services" id="section_three">											
                            <div class="icons">
                                <i class="fa fa-thumbs-up fa-3x"></i>
                            </div>
                            <h3><a href="tips.jsp" style="color: black">Safety tips</a></h3>	
                            <p style="text-align: left">
                                Taking action may not be simple, but there are several steps
                                you can follow and plan in advance. Be ready as there is always
                                a solution.
                            </p>
                        </div>
                    </div>
                    <hr>
                </div>

                <div class="col-md-4">
                    <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.6s">
                        <div class="services" id="section_four">											
                            <div class="icons">
                                <i class="fa fa-search fa-3x"></i>
                            </div>
                            <h3><a href="search.jsp" style="color: black">Services</a></h3>
                            <p style="text-align: left">
                                Would you like to speak to someone 
                                about it? Do you need support or consultation? Find the 
                                right services that will help you in many ways.
                            </p>							
                        </div>
                    </div>
                    <hr>
                </div>

                <div class="col-md-4">
                    <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.4s">
                        <div class="services" id="section_two">											
                            <div class="icons">
                                <i class="fa fa-group fa-3x"></i>
                            </div>
                            <h3><a href="communities.jsp" style="color: black">Communities</a></h3>	
                            <p style="text-align: left">
                                There are many communities, associations and people around you willing
                                to support you in many ways. Find out where and how to reach them.
                            </p>

                        </div>						
                    </div>
                    <hr>
                </div>

              

                <div class="col-md-4">
                    <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.8s">
                        <div class="services" id="section_six">											
                            <div class="icons">
                                <i class="fa fa-bar-chart-o fa-3x"></i>
                            </div>
                            <h3><a href="statistics.jsp" style="color: black">Statistics</a></h3>	
                            <p style="text-align: left">
                                Domestic violence is a widespread issue even in Victoria. This
                                is why we need to raise awareness through information gathering.
                            </p>
                        </div>
                    </div>
                    <hr>
                </div>


                <div class="col-md-4">
                    <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.6s">
                        <div class="services" id="section_five">												
                            <div class="icons">
                                <i class="fa fa-book fa-3x"></i>
                            </div>
                            <h3><a href="story.jsp" style="color: black">Stories</a></h3>
                            <p style="text-align: left">
                                Read about stories of women who have faced violence 
                                and how they overcame it and check out some videos 
                                of inspirational women for motivation.
                            </p>							
                        </div>
                    </div>
                    <hr>
                </div>




            </div>
    </section>

    <%@include file="footer.jsp" %>

