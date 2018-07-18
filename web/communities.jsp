<%-- 
    Document   : You are not alone
    Created on : 26/04/2017, 12:15:44 PM
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

            #myDIV1 {
                display: none;
                width: 100%;
                padding: 20px 0;
                text-align: left;
                margin-top:10px;
            }

            #myDIV2 {
                display: none;
                width: 100%;
                padding: 20px 0;
                text-align: left;
                margin-top:10px;
            }

            /*            a {
                            font-weight: bold;
                        }*/
        </style>
    </head>
    <body>
        <%@include file="navigation.jsp" %>
        <div class="breadcrumb">
            <h2 style="text-align:center">Communities</h2>
        </div>
    </body>

    <div class="container"> 
        <div class="row">
            <div class="col-lg-8">

                <p>Domestic violence problem is unfortunately a reality and a critical issue across nations and different social status.</p>
                <p>If you are facing a problematic situation in your own house, it is possible that you felt that anyone can't understand, or help you with, your problem.</p>

                <p>
                    <b>But you are not alone!</b> 
                    There are many people, associations and <a href="http://4ramen.ap-southeast-2.elasticbeanstalk.com/search.jsp" style="color: blue">facilities near you</a>, able to help in several different ways.

                </p>
                <div class="row">
                    <div class="col-lg-6">
                        <center><img src="http://imageshack.com/a/img922/4316/rs5559.png" alt="Unity is strength" style="width:350px;height:228px"></center>
                    </div>
                    <div class="col-lg-6">
                        <p>You are also part of an enlarged community based on caring, listening and respect, ready to support other people in need and to share their <a href="http://4ramen.ap-southeast-2.elasticbeanstalk.com/story.jsp" style="color: blue">experience and courage</a> with you.</p>
                        <p>Have a look at the links below about local (mainly in Melbourne) and digital communities that you can reach for support. And always remember that unity is strength.</p>
                    </div>
                </div>


                <br>


                <button onclick="myFunction1()">Local communities/associations in Australia</button>

                <div id="myDIV1">
                    <p><a href="https://dvcs.org.au/our-services/support-groups" style="color: blue">Domestic Violence Crisis Service</a> organises sessions providing support opportunities for individuals involved into domestic violence.</p>

                    <p>Such extensive <a href="http://www.dvrcv.org.au/sites/default/files/DVRCV-Support-Groups-booklet-January-2017.pdf" style="color: blue">list</a> is collected and provided by the Domestic Violence Resource Centre Victoria, listed by area and suburb.</p>


                    <p><a href="https://www.facebook.com/groups/GRACEagainstDV/" style="color: blue">GRACE: West Melbourne families against domestic violence</a> has been formed by a group of women who share Christian values and are extending God's grace by providing 'care' packages to women and children fleeing domestic violence.</p>

                    <p><a href="https://www.facebook.com/groups/162758130904609/" style="color: blue">Domestic Violence Breaking Free, Support Australia</a> is group to support all Victims/Survivors and a place to share thoughts, feelings and ideas in a totally safe environment.</p>

                    <p><a href="https://www.facebook.com/domesticviolenceawarenessaustralia/" style="color: blue">Domestic Violence Awareness Australia</a> is a safe haven for all victims of domestic violence, regardless of race, gender, sexual orientation or disability. Everyone are deserving of respect and support. </p></div>

                <br>
                <br>

                <button onclick="myFunction2()">Worldwide communities</button>

                <div id="myDIV2">

                    <p><a href="http://forums.our-place-online.net/" style="color: blue">Our place</a>: an extensive forum that offers different kinds of support and resources related to domestic violence and abuse. </p>

                    <p><a href="http://aftersilence.org/" style="color: blue">After silence</a> website is offered for support of other rape and sexual abuse survivors. </p>

                    <p><a href="http://www.experienceproject.com/groups/Am-A-Victim-Of-Domestic-Violence/896?sort=recent" style="color: blue">Experience project: I am a victim of domestic violence</a>. Personal Stories, Advice, and Support. 
                    </p>

                    <p><a href="https://www.facebook.com/groups/559516440815510/" style="color: blue">Domestic Violence – Survivors</a> group has been created because many victims of abuse do not receive the support they need. Even those who do have supportive friends and family... sometimes you just need to talk with people who understand because they have been there. </p>

                    <p><a href="https://www.facebook.com/groups/StopDV/" style="color: blue">Domestic Violence Awareness</a> </p>
                    <p><a href="https://www.facebook.com/groups/327756537423105/" style="color: blue">Domestic Violence help UK group</a> </p>

                    <p><a href="www.domesticshelters.org">Domestic shelters</a>: find domestic violence programs/shelters in US/Canada, plus helpful info for those experiencing abuse or those looking to help others experiencing abuse. </p>
                    <p><a href="http://www.866uswomen.org/" style="color: blue">American Overseas Domestic Violence Crisis Center</a> </p>

                </div><!--END myDIV2-->

            </div> <!--col-lg-8-->

            <div class="col-lg-4"><span><a class="twitter-timeline"  href="https://twitter.com/hashtag/domesticviolence" data-widget-id="852381827952123904" style="color: blue">#domestic violence Tweets</a></span>
            </div> <!--col-lg-4-->

        </div><!--row-->
    </div><!--container-->


    <script>
        function myFunction1() {
            var x = document.getElementById('myDIV1');
            if (x.style.display === 'none' || x.style.display === '') {
                x.style.display = 'block';
            } else {
                x.style.display = 'none';
            }
        }

        function myFunction2() {
            var x = document.getElementById('myDIV2');
            if (x.style.display === 'none' || x.style.display === '') {
                x.style.display = 'block';
            } else {
                x.style.display = 'none';
            }
        }
    </script>


    <script>!function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
            if (!d.getElementById(id)) {
                js = d.createElement(s);
                js.id = id;
                js.src = p + "://platform.twitter.com/widgets.js";
                fjs.parentNode.insertBefore(js, fjs);
            }
        }(document, "script", "twitter-wjs");</script>


    <%@include file="footer.jsp" %>