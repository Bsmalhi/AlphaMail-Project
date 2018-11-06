<%-- 
    Document   : DownloadApp
    Created on : May 19, 2016, 11:27:39 PM
    Author     : baljotmalhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    .navbar-brand{
        font-size: 1.8em;
    }
    #topRow{
        margin-top: 50px;
        text-align: center;
    }
    #background{
        background: url("Include/Images/Lakeside.jpeg") no-repeat center center fixed; 
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
        width: 100%;
        height:100vh;
    }
    .footer{
                margin-top: 40%;
                
    }
    .marginTop{
                margin-top: 50px;
                margin-bottom: 50px;
    }
    p{
        font-size: 1.2em;
        font-weight: bold;
    }
    .lead{
        font-size: 1.35em;
        font-weight: bolder
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
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                           
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        
                       </button>
                       <a class="navbar-brand">SnapMail</a> 
                 </div>
                <div class="collapse navbar-collapse" >
                        <ul class="nav navbar-nav">
                            <li><a href="Welcome.jsp">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li class="active"><a href="#download">Download App</a></li>
                        </ul>                                                                
                </div>
            </div>
        </div>
        <div class="container contentContainer"  id="background" >
            <div class="col-md-6 col-md-offset-3" id="topRow">
                <h1 class="marginTop"> Downloading Our App</h1>
                <p class="lead"> Thank you, for showing your Interest in our Application. </p>
                <p>We are still working on launching our App soon. </p>
                <p>Please come back later to check for updates on the App.</p>
                <p> Till then please be patient. Thanks!</p>
                
            <div class="footer">
                <b><%@ include file="Footer.jsp" %></b>
            </div>
            </div>
            
        </div>
    </body>
</html>
