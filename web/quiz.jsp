<%-- 
    Document   : quiz
    Created on : 02/05/2017, 12:15:16 PM
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
            a.page-scroll:hover{
                font-weight: bold;
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
        <!--!-- Custom CSS--> 
        <link href="css/scrolling-nav.css" rel="stylesheet">
        <!--Custom CSS--> 
        <link href="css/simple-sidebar.css" rel="stylesheet">
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
                            <li role="presentation" class="active"><a href="quiz.jsp">Explore</a></li>
                            <li role="presentation"><a href="search.jsp">Services</a></li>        
                            <li role="presentation"><a href="mapping.jsp">Emergencies</a></li>
                            <li role="presentation"><a href="contact.jsp">Contact</a></li>						
                        </ul>
                    </div>
                </div>			
            </div>
        </nav>


        <div class="breadcrumb">
            <h2 style="text-align:center">Explore</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12" style="text-align: center">

                    <!--                    <h3 style="text-align: left">Description for explore </h3>-->
                    <p style="text-align: left; font-size: larger; line-height: 180%">Family violence is a serious problem nowadays. Do you know 
                        about it? Have you ever experienced that? Are you in need of the right support? If 
                        you are unsure about it, discover more answering the following questions and exploring 
                        the proposed results.</p> 
                    <br>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3" id="leftCol">
                    <div class="well"> 
                        <ul class="nav nav-stacked" id="sidebar" style="">
                            <li><a class="page-scroll"  onclick="showQ1()" style="color: black; cursor: pointer; text-align: center">Problem knowledge</a></li>
                            <li><a class="page-scroll" onclick="showQ2()" style="color: black; cursor: pointer; text-align: center">Is it your problem?</a></li>
                            <li><a class="page-scroll" onclick="showQ3()" style="color: black; cursor: pointer; text-align: center">Find the services</a></li>
                            <li><a class="page-scroll"  onclick="showQ4()" style="color: black; cursor: pointer; text-align: center">Find the strength</a></li>
                        </ul>
                    </div>

                </div>

                <div class="col-md-9">

                    <section id="que1" class="intro-section" >
                        <div class="row" style="text-align: left">
                            <!--<p>[Problem knowledge]</p>-->
                        </div> 
                        <div class="row" style="margin-top: 25px">

                            <h3 style="text-align: left; line-height: 40px">Do you know that in Victoria State domestic violence represents a major issue?</h3>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-2"><a class="btn btn-default page-scroll" onclick="showQ2()">Yes</a></div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2"><a class="btn btn-default" onclick="showDiv1()">No</a></div>
                                <div class="col-md-3"></div>
                            </div>

                            <div class="row" id="div_q1" style="display: none">
                                <div class="col-md-4">
                                    <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.1s">
                                        <div class="services" id="section_six">											
                                            <div class="icons">
                                                <i class="fa fa-bar-chart-o fa-3x"></i>
                                            </div>
                                            <h3><a href="statistics.jsp" style="color: black">Statistics</a></h3>	
                                            <p style="text-align: left">
                                                Domestic violence is a spread social issue even in Australia. This 
                                                is why we need to raise awareness and provide information.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>

                                <div class="col-md-4"></div>
                                <div class="col-md-4">
                                    <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.2s">
                                        <div class="services" id="section_one">											
                                            <div class="icons">
                                                <i class="fa fa-question-circle fa-3x"></i>
                                            </div>
                                            <h3><a href="emergency.jsp" style="color: black">Is it a problem?</a></h3>
                                            <p style="text-align: left">
                                                Are there behaviours that you have to consider? Know more about the 
                                                “red flags” to look out and how you can be prepared for emergency 
                                                situations.
                                            </p>							
                                        </div>
                                    </div>
                                    <hr>
                                </div>

                            </div>
                        </div>
                        <!--                    </div>-->
                    </section>


                    <!--About Section--> 
                    <section id="que2" class="about-section" style="display: none">
                        <div class="row" style="text-align: left">
                            <!--<p>[Is it your problem?]</p>-->
                        </div> 
                        <div class="row"  style="margin-top: 25px">
                            <h3 style="text-align: left; line-height: 40px">Have you ever experienced directly or indirectly any form of domestic violence?</h3>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-2"><a class="btn btn-default page-scroll"onclick="showQ3()">Yes</a></div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2"><a class="btn btn-default" onclick="showDiv2()">No</a></div>
                                <div class="col-md-3"></div>
                            </div>
                        </div>
                        <!--                        </div>-->
                        <div class="row" id="div_q2" style="display: none">
                            <div class="col-md-4">
                                <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.1s">
                                    <div class="services" id="section_five">												
                                        <div class="icons">
                                            <i class="fa fa-book fa-3x"></i>
                                        </div>
                                        <h3><a href="story.jsp" style="color: black">Stories</a></h3>
                                        <p style="text-align: left">
                                            Here some survivors’ testimonies. Read and listen about how they made it: 
                                            there is always a way to get out from a difficult situation.
                                        </p>							
                                    </div>
                                </div>
                                <hr>
                            </div>
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.2s">
                                    <div class="services" id="section_six">											
                                        <div class="icons">
                                            <i class="fa fa-bar-chart-o fa-3x"></i>
                                        </div>
                                        <h3><a href="statistics.jsp" style="color: black">Statistics</a></h3>	
                                        <p style="text-align: left">
                                            Domestic violence is a spread social issue even in Australia. This 
                                            is why we need to raise awareness and provide information.
                                        </p>
                                    </div>
                                </div>
                                <hr>
                            </div>
                        </div>



                    </section>

                    <!--Services Section--> 
                    <section id="que3" class="services-section" style="display: none">
                        <div class="row" style="text-align: left">
                            <!--<p>[Find the services]</p>-->
                        </div> 
                        <div class="row" style="margin-top: 25px">
                            <h3 style="text-align: left; line-height: 40px">
                                Maybe you feel you are in need of some help. <br>
                                Are you looking for a particular support service?
                            </h3>
                            <div class="col-md-3"></div>
                            <div class="col-md-2"><a class="btn btn-default" onclick="showDiv3()">Yes</a></div>
                            <div class="col-md-2"></div>
                            <div class="col-md-2"><a class="btn btn-default page-scroll" onclick="showQ4()">Not sure</a></div>
                            <div class="col-md-3"></div>

                        </div>
                        <!--</div>-->

                        <div class="row" id="div_q3" style="display: none">

                            <div class="col-md-4">
                                <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.1s">
                                    <div class="services" id="section_four">											
                                        <div class="icons">
                                            <i class="fa fa-search fa-3x"></i>
                                        </div>
                                        <h3><a href="search.jsp" style="color: black">Services</a></h3>
                                        <p style="text-align: left">
                                            Are you hurt? Would you like to speak with someone? Do you need some 
                                            support?
                                        </p>							
                                    </div>
                                </div>
                                <hr>
                            </div>
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.1s">
                                    <a href="mapping.jsp">
                                        <div class="services" id="section_seven">											
                                            <div class="icons">
                                                <i class="fa fa-ambulance fa-3x"></i>
                                            </div>
                                            <h3><a href="mapping.jsp" style="color: black">Emergencies</a></h3>
                                            <p style="text-align: left">
                                                Are you in danger? Are you looking for the services, the closest 
                                                hospital or police station?
                                            </p>							
                                        </div>
                                    </a>
                                </div>
                                <hr>
                            </div>

                        </div>
                    </section>

                    <!--Contact Section--> 
                    <section id="que4" class="contact-section" style="display: none">
                        <div class="row" style="text-align: left">
                            <!--<p>[Find the strength]</p>-->
                        </div> 
                        <div class="row" style="margin-top: 25px">
                            <h3 style="text-align: left; line-height: 40px">Maybe you feel unsure on how to get out of this situation. These are resources that can help you.</h3>
                            <!--<a class="btn btn-default page-scroll" href="#que3">Yes</a>-->

                        </div>
                        <!--</div>-->
                        <div class="row" id="div_q4" style="margin-top: 10px">
                            <div class="col-md-4">
                                <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.05s">
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
                                <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.1s">
                                    <div class="services" id="section_three">											
                                        <div class="icons">
                                            <i class="fa fa-thumbs-up fa-3x"></i>
                                        </div>
                                        <h3><a href="tips.jsp" style="color: black">Safety tips</a></h3>	
                                        <p style="text-align: left">
                                            Take action may not be simple, but there are several adroitnesses you
                                            can follow and plan in advance. Be ready, there is always a solution.
                                        </p>
                                    </div>
                                </div>
                                <hr>
                            </div>

                            <div class="col-md-4">
                                <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.1s">
                                    <div class="services" id="section_five">												
                                        <div class="icons">
                                            <i class="fa fa-book fa-3x"></i>
                                        </div>
                                        <h3><a href="story.jsp" style="color: black">Stories</a></h3>
                                        <p style="text-align: left">
                                            Here some survivors’ testimonies. Read and listen about how they made it: 
                                            there is always a way to get out from a difficult situation.
                                        </p>							
                                    </div>
                                </div>
                                <hr>
                            </div>

                        </div>
                    </section>

                </div>
            </div>
            <br>
        </div>

        <script>
            function showDiv1() {
                var x = document.getElementById('div_q1');
                if (x.style.display === 'none' || x.style.display === '') {
                    x.style.display = 'block';
                } else {
                    x.style.display = 'none';
                }
            }
            function showDiv2() {
                var x = document.getElementById('div_q2');
                if (x.style.display === 'none' || x.style.display === '') {
                    x.style.display = 'block';
                } else {
                    x.style.display = 'none';
                }
            }
            function showDiv3() {
                var x = document.getElementById('div_q3');

                if (x.style.display === 'none' || x.style.display === '') {
                    x.style.display = 'block';
                } else {
                    x.style.display = 'none';
                }
            }
            function showQ1() {
                var a = document.getElementById('que1');
                var b = document.getElementById('que2');
                var c = document.getElementById('que3');
                var d = document.getElementById('que4');
                a.style.display = 'block';
                b.style.display = 'none';
                c.style.display = 'none';
                d.style.display = 'none';
            }
            function showQ2() {
                var a = document.getElementById('que1');
                var b = document.getElementById('que2');
                var c = document.getElementById('que3');
                var d = document.getElementById('que4');
                a.style.display = 'none';
                b.style.display = 'block';
                c.style.display = 'none';
                d.style.display = 'none';
            }
            function showQ3() {
                var a = document.getElementById('que1');
                var b = document.getElementById('que2');
                var c = document.getElementById('que3');
                var d = document.getElementById('que4');
                a.style.display = 'none';
                b.style.display = 'none';
                c.style.display = 'block';
                d.style.display = 'none';
            }
            function showQ4() {
                var a = document.getElementById('que1');
                var b = document.getElementById('que2');
                var c = document.getElementById('que3');
                var d = document.getElementById('que4');
                a.style.display = 'none';
                b.style.display = 'none';
                c.style.display = 'none';
                d.style.display = 'block';
            }



        </script>
        <%@include file="footer.jsp" %>
