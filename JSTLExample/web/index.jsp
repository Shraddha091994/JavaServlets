<%-- 
    Document   : index
    Created on : Jun 3, 2021, 11:17:33 PM
    Author     : DELL
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Example</title>
    </head>
    <body>
        <h1>This is JSTL Example </h1>
        
    <!-- 1       set tag-->
        
    <c:set var="i" value="23" scope="application"></c:set>
    
    <!-- 2       out tag-->

    <h1> <c:out value="${i}" ></c:out> </h1>
    
    <!-- 3       remove-->
    
    <h1> <c:out value="${i}" >This is default value</c:out> </h1></h1>

    <hr>
    <!-- 4       if : test condition : true => print...-->
    
    <c:if test="${i==23}">
        <h1>Yes,I is 23 and condition is true.</h1>
        <p>Hi, Hello, How are you?</p>
    </c:if>
        
     <!-- 5     choose , when , otherwise : java switch-->
    
    <c:choose>
        <c:when test="${i>0}">
            <h1>This is my case First</h1>
            <h2>Number is positive</h2>
        </c:when>
        <c:when test="${i<0}">
            <h1>This is my case Second</h1>
            <h2>Number is negative</h2>
        </c:when>
            
            <c:otherwise>
                <h1>Default case !!!</h1>
                <h2>The number is zero</h2>
            </c:otherwise>
    </c:choose>
                
      <!--  6     for-Each tag : for repeating and traversing-->
      
    <c:forEach var="j" begin="1" end="10">
        <h3>Value of j is = <c:out value="${j}"></c:out></h3>
    </c:forEach>
        
      <!--   7     re direct-->
      <!--   8   url , param-->
    <c:url var="myurl" value="https://www.google.com/search">
        <c:param name="q" value="javatpoint.com"></c:param>
    </c:url>
      <h1><c:out value="${myurl}"></c:out></h1>
    
    <c:redirect url="${myurl}"></c:redirect>
    </body>
</html>
 