<%-- 
    Document   : status
    Created on : Mar 23, 2022, 3:47:30 PM
    Author     : admin
--%>

<%@page import="view_form.acc_getset"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>status Page</title>
    </head>
    <style>
        /*header*/
        .container{
                width:100%;
                height:60px;
                color:blue;
                display:flex;
                align-items:center;
                justify-content:flex-start; 
                position:fixed; 
                top:0px;
                background-color:white;
            }            
            .logo{
                width:50%;                
                text-shadow: 2px 2px lightblue;
                display:flex;
                align-items:center;
                justify-content:flex-start;                
            }
            #logo_color{
                color:blue;
                text-decoration:none;
            }
            .header{
                width:100%;                
                color:blue;
                display:flex;
                align-items:center;                
                justify-content:flex-end;                
            }
            .header_button{
                background-color:white;
                color:blue;
                text-decoration: none;
                border-radius:5px;                 
                cursor:pointer;
                width:100px;
                height:30px;
                box-shadow: 2px 3px 5px black;
                margin:10px;
            }
            .input_button{
               background-color:white;
               border:1px solid white;
               color:blue;
               cursor: pointer;
           }
            .dropdown {
                 position: relative;
                 display: inline-block;
               }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 120px;
                min-height: 8px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                padding: 12px 16px;
                z-index: 1;
              }

            .dropdown:hover .dropdown-content {
                display: block;
                color:black;
            }        
            .dropdown-content a{
                display:block;
                color:black;
                padding:10px;
                text-decoration:none;
                background-color:white;
            }        
            .dropdown-content a:hover {
                background-color:#f1f1f1;
            }
            button::-moz-focus-inner {
                border: 0;
            }
    </style>
    <body>
        <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("username")==null){
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="container">
            <div class="logo">
                <a id="logo_color" href="home.jsp"><h1>IMS</h1></a>
            </div>
            <div class="header">                      
                <div class="dropdown">                 
                    <a href="#"><button class="header_button">Services</button></a> 
                    <div class="dropdown-content">
                        <a href="guidance.jsp">Personal Guidance</a>
                        <a href="resume.jsp">SOP/Resume</a>
                        <a href="scholarship.jsp">Scholarship</a>
                        <a href="visa.jsp">Visa</a>
                        <a href="forex.jsp">Forex</a>
                        <a href="ticketing.jsp">Ticketing</a>
                        <a href="sim.jsp">Sim card</a>
                        <a href="accommodation.jsp">Accomodation</a>                         
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#"><button class="header_button">Test Prep</button></a>                
                    <div class="dropdown-content">
                        <a href="#">IELTS Academic </a>                        
                          <a href="ielts_general.jsp">IELTS General</a>                        
                          <a href="#">TOEFL iBT</a>                        
                          <a href="#">GRE Prep</a>                        
                          <a href="#">SAT Prep</a>                        
                          <a href="#">Duolingo English</a>                        
                          <a href="#">Spoken English</a>                        
                          <a href="#">Spoken French</a>                        
                          <a href="#">Spoken German</a>                        
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#"><button class="header_button">Study Abroad</button></a>
                    <div class="dropdown-content">
                        <a href="study_usa.jsp">USA</a>
                        <a href="#">UK</a>
                        <a href="#">CANADA</a>
                        <a href="#">GERMANY</a>
                        <a href="#">AUSTRALIA</a>
                        <a href="#">NEW ZEALAND</a>
                    </div>
                </div>   
                
                    <form action="Logout"><button class="header_button"><input class="input_button" type="submit" value="Logout"></button></form>  
                  
            </div>                 
        </div>   
        <!--accommodation-->
        <table border="2">
            <tr>
                <th>Name</th>
                <th>Country</th>
                <th>City</th>
                <th>Number</th>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
        
        <!--forex-->
        <table border="2">
            <tr>
                <th>Name</th>
                <th>Country</th>
                <th>City</th>                
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>                
            </tr>
        </table>
        
        <!--guidance-->
        
        <%--<%
            acc_getset acc = new acc_getset();
            String name = (String) acc.getName();
            String country = (String) acc.getCountry();
            String city = (String) acc.getCity();
            String number = (String) acc.getNumber();
        %>
        <form action="view">
           Name: <input type="text" name="name">
           <input type="submit" value="Submit">
        </form>
        <%=name%>
        <%=country%>
        <%=city%>
        <%=number%> 
        
        <jsp:uBean id="details" class="view_form.acc_getset"></jsp:useBean>
        <jsp:setProperty property="*" name="details"></jsp:setProperty>
        record :
        <jsp:getProperty property="id" name="rishabh"></jsp:getProperty>
        <jsp:getProperty property="country" name="sedetails"></jsp:getProperty>
        <jsp:getProperty property="city" name="details"></jsp:getProperty>
        <jsp:getProperty property="number" name="details"></jsp:getProperty>--%>
        
        
    </body>
</html> 
