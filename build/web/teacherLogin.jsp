<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Teacher Login</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="css/theme-xtra-student.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/index/animate.css">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>
    </head>
    <body>
        
        <%@ include file="includes/teacherDashboardHeader_sign_reg.jsp" %>


        <div class="wrapper" style="min-height: 500px;">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="#"><i class="menu-icon icon-dashboard"></i>Sign In</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--/.span3-->
                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h1>Sign In</h1>
                                </div>
                                <div class="module-body">
                                    <form class="signin" action="teacherLoginServlet" method="post">
                                        <table>
                                            <tr>
                                                <td colspan="2">
                                                    <label for="">Username</label>
                                                    <input type="text" name="sign_teacher_uname" id="" required>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><label for="">Password</label>
                                                <input type="password" name="sign_teacher_pwd" id="" required></td>
                                            </tr>
                                            <tr>
                                                <td><input type="submit" value="Submit"></td>
                                            </tr>
                                            <tr>
                                                <td><input type="reset" value="Reset"></td>
                                            </tr>
                                        </table>
                                        
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/.wrapper-->
        <%@ include file="includes/teacherDashboardFooter.jsp" %>

        <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/wow.js"></script>
        <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="scripts/common.js" type="text/javascript"></script>
      
    </body>
