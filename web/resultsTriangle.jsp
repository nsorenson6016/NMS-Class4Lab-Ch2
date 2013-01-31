<%-- 
    Document   : resultsTriangle
    Created on : Jan 31, 2013, 2:52:52 PM
    Author     : nsorenson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Triangle Side results</title>
    </head>
    <body>
        <%
            String side = request.getParameter("sideParam");
            out.println("<h1>Your missing side is " + side + "</h1>");
        %>
        <p>
        <a href="index.jsp">Go back to shapes page</a>
    </body>
</html>
