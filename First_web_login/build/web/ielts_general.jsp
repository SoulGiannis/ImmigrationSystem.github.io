<%-- 
    Document   : ielts_general
    Created on : Mar 25, 2022, 8:26:04 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ielts_general Page</title>
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
            /*form*/
            .container_form{
                width:100em;
                height:100vh;               
                display:flex;
                align-items:center;
                justify-content: center;                
            }
            .bg_img{
                width:95em;
                height:95vh;
                background-image:url("img/ielts_general.jpeg");
                background-repeat: no-repeat;
                background-size:100% 100%;
                display:flex;
                align-items:center;
                justify-content: center; 
            }
            @media (max-width:800px){
                .bg_img{
                    justify-content: flex-start; 
                }
            }
            .input{
                width:300px;
                height:50px;
                font-size:26px;
                margin:10px;
            }
            td{
                font-size:26px;
                margin:10px;
            }
            #submit{
                cursor:pointer;
            } 
        </style>
    </head>
    <body>        
        <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("username")==null){
                response.sendRedirect("login.jsp");
            }
        %>
        <%            
            String name = (String) session.getAttribute("name");
            String batch = (String) session.getAttribute("batch");
            String mode = (String) session.getAttribute("mode");            
            String city = (String) session.getAttribute("city");            
            String email = (String) session.getAttribute("email");            
            if(session.getAttribute("submit_value")==null){
                String submit_value = (String) session.getAttribute("submit_value");
            }            
            if(session.getAttribute("submit_value")==null){
                session.setAttribute("submit_value","Submit");
                String submit_value = (String) session.getAttribute("submit_value");
            }                              
        %>
        <!--header-->
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
                          <a href="#">IELTS General</a>                        
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
        
        <!--form-->
        <div class="container_form">
            <div class="bg_img">
                <form action="ielts_general" method="post">
                    <table>                        
                        <tr>
                            <td>Name :</td>
                            <td><input class="input" value="${name}" type="text" name="name" required></td>
                        </tr>
                        <tr>
                            <td>Batch :</td>
                            <td><input  type="radio" name="batch" value="morning">Morning <input type="radio" name="batch" value="afternoon">Afternoon <input type="radio" name="batch" value="evening">Evening</td>
                        </tr>
                        <tr>
                            <td>Mode :</td>
                            <td><input type="radio"  name="mode" value="online">Online <input type="radio"  name="mode" value="offline">Offline</td>
                        </tr>
                        <tr>
                            <td>City :</td>
                            <td><input class="input" value="${city}"  type="text" name="city" required></td>
                        </tr>                
                        <tr>
                            <td>Email :</td>
                            <td><input class="input" value="${email}"  type="email" name="email" required></td>
                        </tr>                
                    </table>
                    <input type="submit" id="submit" value="${submit_value}">
                </form>
                <form action="remove_data">
                    <input type="submit" id="submit" value="Cancel">
                </form>
            </div>
        </div>
    </body>
</html>
