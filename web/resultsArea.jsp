<%-- 
    Document   : results
    Created on : Jan 31, 2013, 2:17:53 PM
    Author     : nsorenson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Results</title>
    </head>
    <body>
        <%
            Object area = request.getParameter("areaParam");
            out.println("<h1>Your area is " + area + "</h1>");
        %>
        
        <p><a href="index.jsp">Go back to shapes page</a>
    </body>
</html>
