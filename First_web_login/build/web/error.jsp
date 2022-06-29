<%-- 
    Document   : error
    Created on : Mar 11, 2022, 9:47:25 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error Page</title>
    </head>
    <body>
        <%=exception.getMessage()%>
    </body>
</html>
