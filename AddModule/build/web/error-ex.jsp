<%-- 
    Document   : error-ex
    Created on : Jun 2, 2021, 5:27:37 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry !! Something went wrong .....</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    </head>
    <body>
        <div class="container p-3 text-center">
            <img src="img/error_404.png" class="img-fluid"/>
        <h1>Sorry !! Something went wrong .....</h1>
        <p><%= exception %></p>
        <a class="btn btn-outline-primary" href="index.html">Home Page </a>
        </div>
    </body>
</html>
