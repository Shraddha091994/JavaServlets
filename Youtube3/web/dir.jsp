<%-- 
    Document   : dir
    Created on : Jun 1, 2021, 11:33:36 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.Random,java.util.ArrayList,java.io.*" %>

<%@page isErrorPage="true" %>

<%@page session="false" %>

<%--<%@page extends="" %>--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            *{
                margin: 0px;
                padding: 0px;
            }
        </style>
        
    </head>
    <body>
        
        <%@include file="header.jsp" %>
        
        <h1 style="background: #66ffff;color: red;padding: 20px;"> Random number : 
        <%
           Random r=new Random();
           int n=r.nextInt(10);
//           out.println(n);
           %>
           <%= n%>
        </h1>
    </body>
</html>
