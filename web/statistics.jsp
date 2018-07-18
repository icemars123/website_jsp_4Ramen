<%-- 
    Document   : statistics
    Created on : 23/04/2017, 4:15:44 PM
    Author     : Gavin
--%>
<%@page import="com.ramen.model.Incident, java.util.*, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>EmpoweringWA</title>

        <!-- Bootstrap -->
        <%@include file="bootstrap.jsp" %>
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
    </head> 
    <body>
        <%@include file="navigation.jsp" %>
        <div class="breadcrumb">
            <h2 style="text-align:center">Statistics</h2>
        </div>
        <div class="container">
            <p style="text-align: left; font-size: larger; line-height: 180%">
                The following table was released by the Victoria Police Crime Statistics Official regarding
                family violence incidents in the State. Search by Region or city, such as “Eastern region” 
                or “Warrnambool” in the search bar to know more about them.
            </p>
            <br><br>
            <table class="table table-striped table-bordered table-hover" id="myData">
                <thead>
                    <tr>
                        <th>City</th>
                        <th>Region</th>
                        <th>Year</th>
                        <th>Where Charges Laid</th>
                        <th>Where Children Present</th>
                        <th>Family Incidents</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>City</th>
                        <th>Region</th>
                        <th>Year</th>
                        <th>Where Charges Laid</th>
                        <th>Where Children Present</th>
                        <th>Family Incidents</th>
                    </tr>
                </tfoot>
                <tbody>
                    <%@include file="statistics2.jsp" %>
                </tbody>
            </table>
        </div>

        <br><br>
        <footer>
            <div class="inner-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 f-about">
                            <a href="index.jsp"><h1>Empowering Women’s Awareness</h1></a>
                            <p>This website welcomes everyone who is facing domestic violence. It also provide information and resources mainly from Melbourne.</p>
                        </div>
                        <div class="col-md-4 l-posts">
                            <h3 class="widgetheading">Main Sections</h3>
                            <ul>
                                <li><a href="statistics.jsp">When can be considered violence?</a></li>
                                <li><a href="story.jsp">Safety tips and recommendations!</a></li>
                                <li><a href="communities.jsp">You are not alone!</a></li>
                                <li><a href="quiz.jsp">Which information are you in need to find?</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4 f-contact">
                            <h3 class="widgetheading">Stay in touch</h3>
                            <a href="mailto:empoweringwa@gmail.com"><p><i class="fa fa-envelope"></i> empoweringwa@gmail.com</p></a>    
                            <p><i class="fa fa-home"></i> Empowering Women’s Awareness inc  |  PO Box 23456 
                                900 Dandenong Rd, Caulfield East <br>
                                VIC 3145</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="last-div">
                <div class="container">
                    <div class="row">					
                        <div class="copyright">
                            &copy; 2017 4-RAMen -- Empowering Women's Awareness

                        </div>					


                        <!--                <ul class="social-network">
                                            <li><a href="https://www.facebook.com/" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
                                            <li><a href="https://twitter.com/" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
                                            <li><a href="https://www.linkedin.com/" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
                                            <li><a href="https://au.pinterest.com/" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
                                            <li><a href="https://www.google.com.au/" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
                                        </ul>-->
                    </div>
                </div>
            </div>		
        </footer>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins)-->
        <script src="js/jquery.js"></script>
        <script src="js/jquery-2.1.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>

        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>

        <script src="js/wow.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.bxslider.min.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/fancybox/jquery.fancybox.pack.js"></script>
        <script src="js/functions.js"></script>
        <script>wow = new WOW({}).init();</script>
        <script>
            $('#myData').dataTable();
        </script>
    </body>
</html>