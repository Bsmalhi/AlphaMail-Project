<%-- 
    Document   : Register
    Created on : May 18, 2016, 1:05:55 PM
    Author     : baljotmalhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>SnapMail</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
        <style>
            #topContainer{       
                background-image:url("Include/Images/forest.jpeg");
                width: 100%;
                height:100vh;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
            h1{
                font-size: 3em;
                font-style: oblique;
            }
            .padd{
                margin-left: 30px;
            }
            .marginTop{
                margin-top: 50px;
                margin-bottom: 50px;
            }
            #topRow{
                margin-top: 100px;
                text-align: center;
            }
            .footer{
                margin-top: 22%;
            }
            label{
                font-size: 1.1em;
                font-style: italic;
            }
            h1{
                font-style: italic;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <a class="navbar-brand">SnapMail</a>
                <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class=""><a href="Welcome.jsp">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="DownloadApp.jsp">Download The App</a></li>
                            <li class="active"><a href="#register">Register Account</a></li>
                        </ul>                                                                
                </div>
            </div>
        </div>
        
        <div class="container" id="topContainer" >
                    <div class="col-lg-6 col-lg-offset-3" id="topRow">
                        <h1 class="marginTop">Create Account</h1>
                        <form action="SignUp" method="post" class="navbar-form navbar-center"/>
                            <label> Username&nbsp;</label>
                            <input type="text" name="username" class="form-group"/><br>
                            <label> Password&nbsp;</label>
                            <input type="password" name="password" class="form-group"/><br>
                            <label> First Name</label>
                            <input  type="text" name="firstname" class="form-group"/><br>
                            <label> Last Name</label>
                            <input type="text" name="lastname" class="form-group"/><br>
                            <label> Email &nbsp; </label>
                            <input type="email" name="email" class="form-group padd"/><br>
                            <label></label>
                            <input  type="submit" value="Create" class="btn btn-success"/>
                            <i>${message}</i>
                        </form>
                        
                        <div class="footer">
                        <%@ include file="Footer.jsp" %>
                        </div>
                    </div>
            
                </div>
        
    </body>
</html>
