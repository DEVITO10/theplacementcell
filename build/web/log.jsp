<%-- 
    Document   : lo
    Created on : Jan 8, 2022, 7:49:29 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>LogIn</title>
            <link rel="stylesheet" href="https://bootswatch.com/4/flatly/bootstrap.min.css">
            <style>
                body {

                    background: url('images/Logo/img7.png') no-repeat center center fixed;

                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                    background-size: cover;
                }
            </style>
    </head>
            <body style="background-color: white" style="text-align: center;">
            <nav class="navbar navbar-expand-lg navbar-dark bg-success">
                <u>
                    <h3 style="font-size: 48px;font-family: Baskerville;">Techno Placement Cell</h3>
                </u>
            </nav>
            <div class="text-center">
                <h3 style="color: white;" class="p-3 bg-primary"><span style="color: red;"></span> </h3>
            </div>
            <div class="container">

                <section id="counter" class="section-padding">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row justify-content-between">
                            <div class="col-lg-12 col-md-12 col-xs-12">
                                <div class="mt-4 text-center row">
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>


            <div class="container">
                <div class="row">
                    <div class="col-md-4" style=" width: 360px;margin: auto;padding: 1% 0 1%;">
                        <div class="single-blog">
                            <form action="/save" method="POST"
                                style="background: rgba(0,0,0,0.5);max-width: 360px;padding: 45px;">
                                <h3>Register Now</h3>
                                <div>
                                    <input type="text" name="fname" placeholder="First Name" required="First Name Empty"
                                        style="font-family: 'Roboto',sans-serif; outline: 1;background: #154360;width:100%;border: 0;margin: 0 0 15px;padding: 15px;box-sizing: border-box;font-size: 14px;">

                                    <input type="text" name="lname" placeholder="Last Name" required="Last Name Empty"
                                        style="font-family: 'Roboto',sans-serif; outline: 1;background: #154360;width:100%;border: 0;margin: 0 0 15px;padding: 15px;box-sizing: border-box;font-size: 14px;">
                                </div>
                                <div>
                                    <input type="email" name="email" placeholder="Email Address"
                                        required="Email Address Empty"
                                        style="font-family: 'Roboto',sans-serif; outline: 1;background: #154360;width:100%;border: 0;margin: 0 0 15px;padding: 15px;box-sizing: border-box;font-size: 14px;">
                                </div>
                                <div>
                                    <input type="text" name="uname" placeholder="User name" required="Username Empty"
                                        style="font-family: 'Roboto',sans-serif; outline: 1;background: #154360;width:100%;border: 0;margin: 0 0 15px;padding: 15px;box-sizing: border-box;font-size: 14px;">
                                </div>
                                <div>
                                    <input type="password" name="pwd" placeholder="8-15 Length password" maxlength="15"
                                        minlength="8" required="Password Empty"
                                        style="font-family: 'Roboto',sans-serif; outline: 1;background: #154360;width:100%;border: 0;margin: 0 0 15px;padding: 15px;box-sizing: border-box;font-size: 14px;">
                                </div>
                                <div>
                                    <input type="password" name="r_pwd" placeholder="Retype password" maxlength="15"
                                        minlength="8" required="Password Empty"
                                        style="font-family: 'Roboto',sans-serif; outline: 1;background: #154360;width:100%;border: 0;margin: 0 0 15px;padding: 15px;box-sizing: border-box;font-size: 14px;">
                                </div>
                                <div>
                                    <input type="submit" name="submit" value="Register"
                                        style="font-family: 'Roboto',sans-serif;text-transform: uppercase;outline: 0;background: white;width: 100%;border: 0;padding: 15px;color: black;font-size: 14px;cursor: pointer;">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4" style=" width: 360px;margin: auto;padding: 1% 0 1%;">
                        <div class="single-blog">
                            <form action="/login" method="POST"
                                style="background: rgba(0,0,0,0.5);max-width: 360px;padding: 45px;">
                                <h3>LogIn</h3>
                                <div>
                                    <input type="text" name="uname" placeholder="User Name"
                                        required="Email Address Empty"
                                        style="font-family: 'Roboto',sans-serif; outline: 1;background: #154360;width:100%;border: 0;margin: 0 0 15px;padding: 15px;box-sizing: border-box;font-size: 14px;">
                                </div>
                                <div>
                                    <input type="password" name="pwd" placeholder="8-15 Length password" maxlength="15"
                                        minlength="8" required="Password Empty"
                                        style="font-family: 'Roboto',sans-serif; outline: 1;background: #154360;width:100%;border: 0;margin: 0 0 15px;padding: 15px;box-sizing: border-box;font-size: 14px;">
                                </div>
                                <div>
                                    <input type="submit" name="submit" value="Login"
                                        style="font-family: 'Roboto',sans-serif;text-transform: uppercase;outline: 0;background: white;width: 100%;border: 0;padding: 15px;color: black;font-size: 14px;cursor: pointer;">
                                </div>
                                <br><a href="#">Forgot password? </a><br>
                                <br>
                                <a>Don't have an account?Please Register First</a><br>

                            </form>
                        </div>
                    </div>
                </div>
            </div>

<!--            <footer>

                <div class="text-centers">
                    <div class="bg-success" style="text-align: center;">
                        <h1 class="cont" style="font-family: Baskerville">Contact Us :</h1>
                        <p style="font-family: Arial; font-size: 20px;">23/A Sahapur,New Alipore Kolkata,West Bengal
                            700053
                        </p>
                        <p style="font-family: Arial; font-size: 20px;">Ph no: <span
                                style="color: red;font-size: 15px;">206-331-4034,866-356-2021</span></p>
                        <p style="font-family: Arial; font-size: 20px;">Email :<span
                                style="color: red;font-size: 15px;">
                                abc@gmail.com</span></p>
                        <h1 class="cont" style="font-family: Baskerville;color: blue;">
                            <a href="#">
                                <spam class="cont" style="font-family: Baskerville;color: black; ">About Us</spam>
                            </a>
                        </h1>
                        <div class="footer-social-icons" style="font-size: 25px;">
			<ul>
				<li><a href="#" target="blank"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#" target="blank"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#" target="blank"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#" target="blank"><i class="fa fa-youtube"></i></a></li>
			</ul>
		</div> 
                    </div>
                    <div class="footer-bottom">
                        <p class="text-center"></p>
                    </div>
                </div>
            </footer>-->


        </body>
</html>
