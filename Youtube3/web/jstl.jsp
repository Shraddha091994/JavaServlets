<%-- 
    Document   : jstl
    Created on : Jun 2, 2021, 7:50:56 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Taglib Directive tutorial : </h1>
        <hr>
      
        <%--<c:set var="name" value=" The India "></c:set>--%>
        
        <%--<c:out value="${name}"></c:out>--%>
        
        <%--<c:if test="${3>2}">--%>
            <!--<h2> This is true block 3>2 </h2>-->
        <%--</c:if>--%>
        
        <p:out value="${50+40}"></p:out>
        
        <%!
            int n1=200;
            int n2=0;
            %>
            
         <%
             int division=n1/n2;
            %>
            
            <h1>Division = <%= division %> </h1>
            
            
            
           
        
    </body>
</html>
