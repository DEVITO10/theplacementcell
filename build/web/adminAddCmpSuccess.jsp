<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if((String)session.getAttribute("adminuname")==null){
        %><jsp:forward page="adminLogin.jsp" /><%
    }
%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="tpcDaoImplementations.dbConnectionImplementation"%>
<%@page import="tpcInterfaces.AdminSQLQuery"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Company - Admin
        </title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/index/animate.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>
        
    </head>
    <body>
        
        <%@ include file="includes/adminDashboardHeader.jsp" %>
        
        
        
        <div class="wrapper" style="background-color: #EEEEEE;">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li><a href="adminDashboard.jsp"><i class="menu-icon icon-dashboard"></i>Dashboard</a></li>
                                <li><a href="adminCompanyDashboard.jsp"><i class="menu-icon icon-building"></i>Companies</a></li>
                                <li><a href="adminShowStudents.jsp">&nbsp;<i class="menu-icon"><i class="fa fa-user-graduate"></i></i>Students</a></li>
                                <li><a href="adminShowTeachers.jsp"><i class="menu-icon"><i class="fa fa-chalkboard-teacher"></i></i>Teachers</a></li>
                                <li><a href="adminProfile.jsp"><i class="menu-icon icon-user"></i>My Profile</a></li>
                            </ul>
                            <!--/.widget-nav-->
                        </div>
                        <!--/.sidebar-->
                    </div>
                    <!--/.span3-->

                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h1>Companies</h1>
                                </div>
                                <div class="module-body" style="text-align: center;">
                                    <br><br>
                                    <h2>Company Added Successfully</h2>
                                    <label for="">Company Dashboard</label>
                                    <a href="adminCompanyDashboard.jsp"><button class="btn-primary btn-large">Click Here</button></a>
                                    <br><br>
                                </div>
                            </div><!--/.module-->
                        </div>
                    </div>
                    <!--/.span9-->
                </div>
            </div>
            <!--/.container-->
        </div>
        <!--/.wrapper-->
        
        <%@ include file="includes/adminDashboardFooter.jsp" %>
        
        <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/wow.js"></script>
        <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="scripts/common.js" type="text/javascript"></script>
      
    </body>
