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
        <title>Companies</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="css/theme-xtra-student.css" rel="stylesheet">
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
        
        <div class="wrapper" style="background-color: #EEEEEE; min-height: 500px;">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li><a href="adminDashboard.jsp"><i class="menu-icon icon-dashboard"></i>Dashboard</a></li>
                                <li><a href="#"><i class="menu-icon icon-building"></i>Companies</a></li>
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
                                <div class="module-body" style="overflow: auto">
                                    <div class="span8 show-companies" style="display:flex; box-sizing: border-box; overflow: auto;">
                                    <%
                                        try{
                                                int count = 0;
                                                Connection connection=null;
                                                connection =  dbConnectionImplementation.getConnection();
                                                Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                                                ResultSet resultSet = statement.executeQuery(AdminSQLQuery.showCompanies);
                                                if(resultSet.next()){
                                                    resultSet.beforeFirst();
                                                    while(resultSet.next() && count<4){
                                    %>
                                        <div class="span2" style="margin: 5px; border: 1px solid grey; text-align: center; padding: 2px; border-radius: 5px;">
                                            <span style="font-size: 20px;"><%= resultSet.getString("name") %></span><br>
                                            <span style="font-size: 10px;"><%= resultSet.getString("job_desc") %></span>
                                        </div>
                                    <% 
                                                        if(count == 3){
                                                            %>
                                                            <a href="adminViewCompanyAll.jsp"><div class="span1" style="margin: 5px; display: flex; flex-direction:column;justify-content: center; align-items: center; border: 1px solid grey; padding: 2px; border-radius: 5px">
                                                                <i class="icon-angle-right" style="font-size: 50px;"></i><br>View More
                                                                </div></a>
                                                            <%
                                                        }
                                                        count+=1;
                                                    }
                                                }
                                                else{
                                                %>
                                                    <h3>No Companies Available.</h3>
                                                <%
                                                }
                                        } 
                                        catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                    <a href="adminAddCompany.jsp" class="btn-box big span4"><i class="icon-plus"></i><b>Add</b></a>
                                    <a href="adminRemoveCompany.jsp" class="btn-box big span4"><i class="icon-minus"></i><b>Remove</b></a>
                                    <a href="adminViewCompanyAll.jsp" class="btn-box big span4"><i class="icon-eye-open"></i><b>View</b></a>
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
