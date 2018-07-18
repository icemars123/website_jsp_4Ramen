<%-- 
    Document   : search
    Created on : 29/03/2017, 8:45:34 AM
    Author     : Gavin
--%>
<%@page import="com.ramen.model.Service, java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>EmpoweringWA</title>

        <!-- Bootstrap -->
        <%@include file="bootstrap.jsp" %>
        <style>
            body{
                text-align: left;
                margin-top:20px;
            }
            .div{
                margin: 0 auto;
                width: 50%;
                height: 200px;
            }
            div.srow:hover
            {
                background-color: #D3D3D3;
                color: black;
                cursor: pointer;
            }
            th
            {
                height: 70px;
                padding: 15px;
                text-align: left;
            }
            td {
                padding: 15px;
                text-align: left;
            }

        </style>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("div.srow").click(function () {
                    var rowid = this.id;
                    $.ajax({
                        type: 'POST',
                        data: {sid: rowid},
                        url: 'DetailServlet',
                        success: function (data) {
                            window.location.href = 'service_details.jsp';
                        },
                        error: function () {
                            alert('error');
                        }
                    });
                });
            });
        </script>

    </head>
    <body style="background-color: #f6f6f6">
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
                            <li role="presentation" class="active"><a href="search.jsp">Services</a></li> 
                            <li role="presentation"><a href="mapping.jsp">Emergencies</a></li>
                            <li role="presentation"><a href="contact.jsp">Contact</a></li>						
                        </ul>
                    </div>
                </div>			
            </div>
        </nav>

        <div class="breadcrumb">
            <h2>Search Services</h2>
        </div>

        <div class="container" id="div1">
            <div class="row">
                <div class="col-md-12" style="text-align: center">
                    <p style="text-align: left; font-size: larger; line-height: 180%">
                        There are several services in Melbourne that can provide answers
                        to the different needs you may have. Find out more by searching 
                        below.
                    </p> 
                    <ul style="text-align: left">
                        <li style="font-size: larger; line-height: 180%">Search by keywords: e.g. children, housing, legal.</li>
                        <li style="font-size: larger; line-height: 180%">Search by suburb: e.g. Brunswick.</li>
                    </ul>
                    <br>
                </div>
            </div>

            <form action="./ServiceServlet" method="POST">
                <div id="search_box">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="input-group">
                                <input type="text" class="form-control" name="keyword" value="" placeholder="Search keyword and Suburb">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit" name="action" value="Search" onclick="showDiv1()"><span class="glyphicon glyphicon-search"></span></button>
                                </span>
                            </div>

                        </div>
                    </div>
                </div>

            </form>
            <br> <br>
            

            <form id="form_result">
                <div style="max-height: 900px; overflow: auto; position: relative; text-align: center; background-color: white" id="div_result">
                    <div class="row">
                        <div id="header" class="table-bordered">
                            <div class="col-md-3 col-sm-3 col-xs-3" style="text-align: left">Service name</div>
                            <div class="col-md-4 col-sm-4 col-xs-4" style="text-align: left">Service Category</div>
                            <div class="col-md-2 col-sm-2 col-xs-2" style="text-align: left">Suburb</div>
                            <div class="col-md-3 col-sm-3 col-xs-3" style="text-align: left">Website</div>
                        </div>
                        <br>
                        <c:forEach items="${services}" var="ser">
                            <div class="row srow table-bordered" id="${ser.sid}" style="margin-left: 0px">
                                <div class="col-md-3 col-sm-3 col-xs-3" style="text-align: left"><c:out value="${ser.name}"/></span></div>
                                <div class="col-md-4 col-sm-4 col-xs-4" style="text-align: left"><c:out value="${ser.category}"/></div>
                                <div class="col-md-2 col-sm-2 col-xs-2" style="text-align: left"><c:out value="${ser.suburb}"/></div>
                                <div class="col-md-3 col-sm-3 col-xs-3" style="overflow: hidden; text-align: left"><c:out value="${ser.website1}"/></span></div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </form>
        </div>
        <script>
            function showDiv1() {
                var x = document.getElementById('header');
                x.style.display = 'block';

            }
        </script>
        <br><br><br>
        <%@include file="footer.jsp" %>

