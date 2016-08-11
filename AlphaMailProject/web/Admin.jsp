<%-- 
    Document   : Admin
    Created on : May 21, 2016, 12:32:32 AM
    Author     : baljotmalhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SnapMail</title>
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
    <style type="text/css">
    .marginTop{
        margin-top: 50px;
        margin-bottom: 50px;
    }
    #topRow{
        margin-top: 100px;
        text-align: center;
    }
    .footer{
        margin-top: 45%;
    }
    .navbar-brand{
        font-size: 1.8em;
    }    
    #topContainer{
        background-color: lightcyan;
        width: 100%;
        height: 100vh;
    }
    </style>

  </head>
    <body>
       <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                           
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        
                    </button>
                       <a class="navbar-brand">Snap Chat</a> 
                </div>
                <div class="collapse navbar-collapse" >
                        <ul class="nav navbar-nav">
                            <li><a href="Welcome.jsp">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="DownloadApp.jsp">Download App</a></li>
                            <li class="active"><a href="#admin">Admin Login</a></li>
                        </ul>                                                                
                </div>
            </div>
       </div>
        <div class="container" id="topContainer" >
            <div class="col-lg-6 col-lg-offset-3" id="topRow">
                <h1 class="marginTop">Login Information</h1>
                <form action="SignInAdmin" method="post" class="navbar-form"/>
                <div class="form-group">
                    <label> Username</label>
                    <input type="text" name="username" class="form-control"/><br>
                </div>
                <br>
                <div class="form-group">
                    <label> Password</label>
                    <input type="password" name="password" class="form-control"/><br>
                </div>
                <br>
                    <label ></label>
                    <input  type="submit" value="Login" class="btn btn-success"/>   
                    <i>${message}</i>
                </form>
                
                
            <div class="footer">
            <%@ include file="Footer.jsp" %>
            </div>
             </div>
           
        </div>
        
        
    </body>
</html>
