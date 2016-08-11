<%-- 
    Document   : Main_Will
    Created on : May 22, 2016, 4:13:37 PM
    Author     : Baljot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AlphaChat</title>
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
    <style type="text/css">
    .marginTop{
        margin-top: 15px;
        margin-bottom: 15px;
        width: 100vh;
    }
    #topRow{
        margin-top: 100px;
        text-align: center;
        width: 100vh;
    }
    .footer{
        margin-top: 7%;
        text-align: center;
    }
    .navbar-brand{
        font-size: 1.8em;
    }    
    #topContainer{
        background-image: url("Include/Images/valley.jpeg");
        width: 100%;
        height: 100vh;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
    #textArea{
        width: 400px;
        height: 200px;
    }
    .w{
        width: 100%;
        border: solid black;
    }
    .right{
        margin-left: 500px;
    }
    #background{
        
    }
    .border{
        width: 100%;
        border: solid black .2em;
        border-radius: 7.5em 5em;
    }
    #textArea{
        width: 400px;
        height: 100px;
    }
    .navbar-left{
        margin: 0 0 10px 10px;
    }
    .input-group{
        text-align: center;
    }
    #send{
        margin-top: -10px;
        
    }
    #container{
        background-color: lightblue;
    }
    h3 a{
        text-decoration: inherit;
        color: grey;
    }
    #color{
        background-color: #E6DFE9;
        margin-top: -19px;
    }
    </style>
  </head>
  <body id="background">
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
                            <li><a href="Chat.jsp">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="DownloadApp.jsp">Download App</a></li>
                            <li class="active"><a href="#UserMain">Home Page</a></li>
                            <li class="right"><a href="Welcome.jsp">Sign Out</a></li>
                        </ul>                                                                
                </div>
            </div>
       </div>
        <div class="container" id="topContainer" >
            <div class="col-lg-6 col-lg-offset-3" id="topRow">
                <h1 class="marginTop"><%@ include file="Header.jsp" %></h1>
             
                <h3> ${user.username}'s <a href ="EditUser.jsp" style="text-decoration: none; color: grey;"> Account Settings</a></h3>

                
                <br><br>

                <div>
                    <h2 id="send"><span id="send" class="glyphicon glyphicon-envelope"> SendMessage</span></h2>
                    <form action="Chat" method="post">
                        <input type="hidden" name="action" value="SEND">
                        
                        
                            <label>To:</label>
                           <input type="text" name="username" required class="form-control" ><br>

                       
                        
                        <label>Message:</label><br>
                       
                        <textarea type="text" name="message" required class="form-control"></textarea><br>
                        <input type="submit" value="Send"><p><i>${message}</i><p>
                        
                    </form>
                </div>
            </div>
        </div>
        
        <br>
            
        <div id="color" >
            <h3 class="navbar-left">Inbox: ${ user.username}</h3>
            <div>         
                <table class="border" border="1" style="margin:0.5em; width:100%" >
                    <tr>
                        <th style="width: 3em"></th>
                        <th style="width: 10em">From</th>
                        <th style="width: 8em">Day-Time</th>
                        <th style="width: 10em">Message</th>
                        <th style="width: 4em">Action</th>
                    </tr>
                    <c:forEach items="${user.message}" var="m">
                       <tr>
                           <td style="font-weight: bold;"><c:out value="${m.number}"/></td>
                           <td style="font-weight: bolder;"><c:out value="${m.fromuser}"/></td>
                           <td><c:out value="${m.year}-${m.month}-${m.day} ${m.hour}:${m.minute}:${m.second}"/></td>
                           <td style="font-weight: bold; font-style: italic;"><c:out value="${m.message}"/></td>
                           <td>
                                <form action="Chat" method="post">
                                    <input type="hidden" name="action" value="DELETE">
                                    <input type="hidden" name="id" value="${m.number}">
                                    <input type="submit" value="Delete">
                                </form>
                           </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="footer">
            <%@ include file="Footer.jsp" %>
            </div>
        </div>
            
    </body>
</html>
 <!--
            <form action="Chat" method="post">
                <input type="hidden" name="action" value="DELETE">
                <label>Enter the number of message you want to delete:</label>
                <input type=number name="id" required>
                <input type="submit" value="Delete">
            </form>
            -->