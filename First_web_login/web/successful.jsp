<%-- 
    Document   : successful
    Created on : Mar 15, 2022, 9:06:03 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Successful Page</title>
        <style>
            body{
                display:flex;
                align-items:center;
                justify-content: center;
                background-color:oldlace;
            }
            .form_container{
                margin-top:10%;
                width:60%;
                height:60vh;
                text-align: center;
                background-color:white;
                border:2px solid black;
            }
            #text{
                font-size: 54px;
            }
        </style>
    </head>
    <body>
        
        <%
            response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
            if(session.getAttribute("username")==null)
            {
                response.sendRedirect("login.jsp");
            }        
        %>
        
        <!--set t_name is name of table from which data has been submited-->
        <!--setting value of t_name to access all over servlet-->
        <%  
            String t_name = (String) request.getAttribute("t_name");
            session.setAttribute("t_name",t_name);                        
        %>
        <div class="form_container">
            <img src="img/thankyou.jpg" alt="alt"/>
            <p id="text">Thank You!</p>
            <h1>Your Submission for ${t_name} has been received</h1>
            <h2>Our team will get back to you</h2>
            <h2><a href="view${t_name}">view details | </a><a href="home.jsp">home</a></h2>            
        </div>
    </body>
</html>
