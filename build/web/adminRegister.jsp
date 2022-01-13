<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Registration</title>
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
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container" style="color: white;">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href=""><span style="color: white">  Student Dashboard</span></a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav pull-right">
                            <li id="support"><a href="#"><span>Support</span></a></li>
                            <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" style="pointer-events: none; cursor:not-allowed;">
                                <img src="images/user.png" class="nav-avatar" />
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Your Profile</a></li>
                                    <li><a href="#">Edit Profile</a></li>
                                    <li><a href="#">Account Settings</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="studentLogin.jsp"><i class="menu-icon icon-dashboard"></i>Sign In</a></li>
                                <li><a href="#"><i class="menu-icon icon-bullhorn"></i>Register Now</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--/.span3-->
                    <div class="span9">
                        <div class="content">
                            <div class="module">
                                <div class="module-head">
                                    <h1>Register Now</h1>
                                </div>
                                <div class="module-body">
                                    <form class="signin" action="" method="POST">
                                        <table>
                                            <tr>
                                                <td>
                                                    <label for="">First Name</label>
                                                    <input type="text" name="reg_fname" required>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label for="">Last Name</label>
                                                    <input type="text" name="reg_lname" required>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label for="">Email Address</label>
                                                    <input type="email" name="reg_email" required>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label for="">Contact Number</label>
                                                    <input type="text" name="reg_phno" required>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label for="">Password (8-15 characters)</label>
                                                    <input type="password" id="pwd" name="reg_pwd" maxlength="15" minlength="8" required>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label for="">Re-type Password (8-15 characters)</label>
                                                    <input type="password" id="r_pwd" maxlength="15" minlength="8" required>
                                                    <label for="" id="mismatch" style="color:red;"></label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="submit" id="submit_button" name="reg_submit" value="Register"  style="cursor: not-allowed" disabled>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="reset" id="reset_button" value="Reset">
                                                </td>
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
        <div class="footer">
            <div class="container">
                <b class="copyright">&copy; 2014 Edmin - EGrappler.com </b>All rights reserved.
            </div>
        </div>
        <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/wow.js"></script>
        <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="scripts/common.js" type="text/javascript"></script>
        <script>
            document.getElementById("r_pwd").addEventListener("input",function(){
                if(document.getElementById("pwd").value != document.getElementById("r_pwd").value){
                    document.getElementById("mismatch").innerText="Password Mismatch";
                    document.getElementById("submit_button").disabled = "true";
                    document.getElementById("submit_button").style.cursor = "not-allowed";
                }
                else{
                    document.getElementById("mismatch").innerText="";
                    document.getElementById("submit_button").disabled = "false";
                    document.getElementById("submit_button").style.cursor = "pointer";
                }
            });
            document.getElementById("reset_button").addEventListener("click",function(){
                document.getElementById("mismatch").innerText="";
                document.getElementById("submit_button").disabled = "false";
                document.getElementById("submit_button").style.cursor = "pointer";
            });
        </script>
    </body>
