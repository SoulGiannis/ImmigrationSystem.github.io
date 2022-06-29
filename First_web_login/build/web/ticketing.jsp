<%-- 
    Document   : ticketing
    Created on : Mar 15, 2022, 8:25:17 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ticketing Page</title>
    <style>
        <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("username")==null){
                response.sendRedirect("login.jsp");
            }
        %>
         <%            
            String name = (String) session.getAttribute("name");         
            String number = (String) session.getAttribute("number");         
            String number_of_tickets = (String) session.getAttribute("number_of_tickets");         
            String classs = (String) session.getAttribute("classs");         
            String departure = (String) session.getAttribute("departure");         
            String destination = (String) session.getAttribute("destination");         
            String date = (String) session.getAttribute("date");         
            if(session.getAttribute("submit_value")==null){
                String submit_value = (String) session.getAttribute("submit_value");
            }            
            if(session.getAttribute("submit_value")==null){
                session.setAttribute("submit_value","Submit");
                String submit_value = (String) session.getAttribute("submit_value");
            }                              
        %>
            .img_container{
                width:100%;
                height:98vh;
                display:flex;
                align-items:center;
                justify-content: center;
                background-image:url("img/ticketing.jpg");
                background-repeat: no-repeat;
                text-align: center;
                background-size:100% 100%;  
                color:white;
            }
            .form_container{
                width:50%;
                height:60vh;                
                display:flex;
                align-items:center;
                justify-content:center;                
            }
            .column{
                float:left;
                width:50%;
            }
            .form_container_inner{
                width:100%;
                height:50vh;
                color:white;
                font-size: 25px;
                text-align: center;
            }
            #mg{
                margin-top:50px;                
            }
            #input{
                border:5px solid grey;
                height:30px;
                width:200px;
                margin:5px;                
            }
            #submit{
                background-color:white;
                width:100px;
                height:30px;    
                cursor:pointer;
            }
            .container{
                width:100%;
                height:50px;
                display:flex;
                align-items:center;
                justify-content:flex-start;
                position:fixed;
                background-color:white;
                margin:0px;
            }
            .logo{
                width:10%;
                display:flex;
                align-items:center;
                justify-content: flex-start;
                color:blue;
                text-shadow: 2px 2px lightblue;
            }
            .header{
                width:90%;
                display:flex;
                align-items:center;
                justify-content: flex-end;                
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
            /*dropdown*/
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
        .input_button{
            background-color:white;
            border:1px solid white;
            color:blue;
            cursor:pointer;
        }
         a{
                text-decoration: none;
                color:white;  
                outline:none;                
            }
            #logo_color{
                color:blue;
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
        
        <div class="img_container">
            <div class="form_container">
                <div class="form_container_inner column">
                    <p>Name: </p>
                    <p>Number : </p>
                    <p>Number of tickets :</p>
                    <p>Class : </p>
                    <p>Departure :</p>
                    <p>Destination :</p>
                    <p>Preferred date :</p>
                </div>
                <div class="form_container_inner column" id="mg">
                    <form action="ticketing_servlet"> 
                        <input type="text" value="${name}" name="name" id="input" required autofocus><br>
                        <input type="text" value="${number}" name="number" id="input" minlength="10" maxlength="10" required><br>
                        <input type="number" value="${number_of_tickets}"  name="number_of_tickets" id="input" required><br>
                        <input type="radio" value="${classs}" name="class" value="economy" required> Economy
                        <input type="radio"   name="class" value="business" required> Business
                        <input type="radio"   name="class" value="first" required> First<br><br>        
                        <input type="text" value="${departure}"  name="departure" placeholder="country/city" id="input" required><br>
                        <input type="text" value="${destination}" name="destination" placeholder="country/city" id="input" required><br>
                        <input type="date" value="${date}" name="date" id="input" required><br><br>
                        <input type="submit" value="${submit_value}" id="submit">
                    </form>
                    <form action="remove_data">
                        <input type="submit" value="Cancel" id="submit">
                    </form>
                </div>                
            </div>
            
        </div>
        
    </body>
</html>
