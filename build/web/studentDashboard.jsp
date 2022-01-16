<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if((String)session.getAttribute("adminuname")==null){
        %><jsp:forward page="studentLogin.jsp" /><%
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
        <title>Admin Dashboard</title>
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
        
        <%
            try{
                    Connection connection=null;
                    connection =  dbConnectionImplementation.getConnection();
                    PreparedStatement preparedStatement=connection.prepareStatement(AdminSQLQuery.getAdminNameQuery);
                    preparedStatement.setString(1, (String)session.getAttribute("adminuname"));
                    ResultSet resultSet = null;
                    resultSet = preparedStatement.executeQuery();
                    while(resultSet.next()){
        %>
        
        <div class="wrapper" style="background-color: #EEEEEE;">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li><a href="#"><i class="menu-icon icon-dashboard"></i>Dashboard</a></li>
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
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                    <a href="adminProfile.jsp" class="btn-box big span6"><i class="icon-user"></i><b style="color:red"><%= resultSet.getString("name") %></b><p class="text-muted">My Profile</p></a>
                                    <a href="adminCompanyDashboard.jsp" class="btn-box big span6"><i class="icon-building"></i><b>Companies</b><p class="text-muted">Show Companies</p></a>
                                    <a href="adminShowTeachers.jsp" class="btn-box big span6" style="margin-left: 0px;"><i class="icon-chalkboard-teacher"></i><b>Teacher</b><p class="text-muted">Show Teachers</p></a>
                                    <a href="adminShowStudents.jsp" class="btn-box big span6"><i class="fa fa-user-graduate"></i><b>Students</b><p class="text-muted">Show Students</p>
                                    </a>
                                </div>
                            </div>
                            <!--/#btn-controls-->
                        </div>
                        <!--/.content-->
                    </div>
                    <!--/.span9-->
                </div>
            </div>
            <!--/.container-->
        </div>
        <!--/.wrapper-->
        <% 
                    }
            } 
            catch (Exception e) {
                e.printStackTrace();
            }
        %>
        
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
