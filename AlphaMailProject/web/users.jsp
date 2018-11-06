<%-- 
    Document   : users
    Created on : Aug 14, 2016, 4:18:10 PM
    Author     : Tracy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AlphaMail</title>
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
    <style type="text/css">

    .navbar-brand{
        font-size: 1.8em;
    }
    #topContainer{
        
        background-image:url("Include/Images/forest.jpeg");
        width: 100%;
        background-size: cover;
    }
    #topRow{
        margin-top: 100px;
        text-align: center;
    }
    #topRow h1{
        font-size: 300%;
    }
    .marginTop{
        margin-top: 30px;
    }
    .center
    {
        text-align: center;
    }
    .title{
        margin-top: 100px;
        font-size: 300%;
    }
    #footer{
        background-color: #B4D1F8;
        margin-top: 50px;
        width: auto;
    }
    .marginBottom{
        margin-bottom: 30px;
    }
    .appImage{
        width: 250px;
    }
    .right{
        margin-top: 5px;
    }
    .up{
        margin-top: -45px;
    }
    .centerTitle{
        
    }
    #errorMessage{
       margin-top: 30px;
       margin-left: 400px;
       
    }
    .row a{
        text-decoration: none;
        color: #4C4C4C;
    }
    .col-md-4 marginTop a{
        text-decoration: none;
    }
    </style>

</head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                           
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        
                       </button>
                       <a class="navbar-brand">AlphaMail</a> 
                 </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="Welcome.jsp">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="DownloadApp.jsp">Download App</a></li>
                        </ul>                                                                
                    </div>
            </div>
        </nav>
        <br><br><br>
       <div class="container contentContainer">
         <div class="row content">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-8">
                <h2>
                    Below is the list of current users. 
                </h2>
                <br>
                <table class="table">
                <thead>
                  <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Username</th>
                    <th>Password</th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${allusers}" varStatus="status">
                    <tr>
                    <td>
                        ${user.firstname}                      
                    </td>                       
                    <td>
                        ${user.lastname}
                    </td>
                    <td>
                        ${user.email}
                    </td>
                    <td>
                        ${user.username}
                    </td>
                    <td>
                        ${user.password}
                    </td>
                    <td>
                        <form role="form" action="ManageUsers" method="post">
                            <input type="hidden" name="action" value="deleteUser">
                            <input type="hidden" name="email" value="${user.email}">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                    </tr>
                    </c:forEach>  
                </tbody>
            </table>
            </div>
            <div class="col-sm-2">
            </div>
        </div>
       </div>
     </body>
</html>
<%@ include file="Footer.jsp" %>
