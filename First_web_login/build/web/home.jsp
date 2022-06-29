<%-- 
    Document   : home
    Created on : Mar 11, 2022, 9:47:12 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <style>
            /*header fixed one main container and two child container floated left ie logo and header*/
            html {
                scroll-behavior: smooth;
            }          
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
            button::-moz-focus-inner {
                border: 0;
            }
            
            /*main image and content*/
            .second_container,.fourth_conatiner,.fifth_container{             
                margin:50px;
                width:100%;
                height:70vh;
                color:blue;             
                display:flex;
                align-items: center;
                justify-content: center;                
            }         
            .bg_imgt{
                padding:15px;
                width:80em;
                height:70vh;
                color:blue;                                 
                background-image:url("img/ielts.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;                
            }           
            .bg_imgth{
                padding:15px;
                width:80em;
                height:70vh;
                color:blue;                                 
                background-image:url("img/ims2.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;                
            }           
            .bg_imgf{
                padding:15px;
                width:80em;
                height:70vh;
                color:blue;                                 
                background-image:url("img/scholarship2.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;                
            }
            .second_container_button{
                border:2px solid;
                border-radius: 15px; 
                cursor:pointer;
                width:100px;
                height:50px;                
                background-color:blue;   
                display:flex;
                justify-content: center;
                align-items:center; 
                box-shadow: 2px 3px 5px black;
            }
            .a{
                text-decoration: none;
                color:white;  
                outline:none;                
            }
            #logo_color{
                color:blue;
                text-decoration:none;
            }
            #text{
                font-size: 54px;
            }
            /*container for test prep third container*/
            .third_container,.sixth_container{
                width:80%;
                height:15vh;
                display:flex;  
                align-items:flex-start;
                justify-content: space-between;   
                color:black;  
                margin-left:10%;                
            }
            .container_heading{                
                display:flex;
                align-items: center;
                justify-content: center;    
                color:black;
                margin-top:10px;
            }
            .cards{
                min-width:15%;
                min-height:80px;
                border:1px solid black;
                border-radius: 5px;
                color:blue; 
                text-align: center;
                box-shadow: 2px 3px 5px black;      
                padding-right:5px;
                padding-left:5px;
            }
            #a{
                text-decoration: none;
                color:blue;  
                outline:none;                
            }
            #a:hover{
                background-color:blue;
                color:white;
                cursor:pointer;
            }
            .cards:hover{
                background-color:blue;
                color:white;
                cursor:pointer;                
            }
                
           /*fourth_container sop resume writing fourth_container is same as third so written in third only*/
           .bg_img_sop{                
                width:80%;
                height:70vh;
                color:blue;                                 
                background-image:url("img/ims4.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;  
           }
           /*fifth_container scholarship*/
           .bg_img_scholarship{
                width:80%;
                height:70vh;
                color:blue;                                 
                background-image:url("img/ims7.jpg");
                background-repeat:no-repeat;
                background-size: cover;
                display:flex;  
                align-items:center;
                justify-content: center; 
           }
           hr{
               width:80%;               
           }
           .cards_container{
                width:80%;
                height:15vh;
                display:flex;  
                align-items:flex-start;
                justify-content: space-between;   
                color:black;  
                margin-left:10%; 
           }
           /*background-images of study aborad buttons*/
           .bg_usa{               
                color:blue;                                 
                background-image:url("img/usa.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;  
           }
           .bg_uk{               
                color:blue;                                 
                background-image:url("img/uk.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;  
           }
           .bg_canada{               
                color:blue;                                 
                background-image:url("img/canada.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;  
           }
           .bg_germany{               
                color:blue;                                 
                background-image:url("img/germany.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;  
           }
           .bg_australia{               
                color:blue;                                 
                background-image:url("img/australia.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;  
           }
           .bg_newzealand{               
                color:blue;                                 
                background-image:url("img/newzealand.jpg");
                background-repeat:no-repeat;
                background-size: 100% 100%;  
           }
           
           /*flag_card is little big as compared to cards*/
           .cards_flag{
               min-width:25%;
               min-height:100px;
               text-align: center;
               border:1px solid blue;
               border-radius: 5px;
               box-shadow: 2px 3px 5px black;
           }
           .eight_container{
               height:50vh;
               width:90%;
               display:flex;
               align-items: center;
               justify-content: space-around;               
           }
           .eight_cards{
               min-width:35%;
               min-height:200px;
               text-align: center;
               border:1px solid blue;
               border-radius: 8px;
               box-shadow: 3px 5px 5px black;
           }                     
           
           .v_line{
               border-left: 2px solid white;
               height:40vh;
           }
           .input_button{
               background-color:white;
               border:1px solid white;
               color:blue;
               cursor: pointer;
           }
           
           /*last container copy write*/
           .containerlastout{
                             width:100%;
                             height:500px;
                             display:block;
                             align-items:flex-start;
                             justify-content:center;
                             background-color:black;
                             color:white;
                             text-align: center;
                         }
        .containerlast{
                        width:100%;
                        height:350px;
                        display:flex;
                        align-items:flex-start;
                        justify-content:space-around;                        
                        margin-top:20px;
                       }
        .containerlastinner{
                            min-width:25%;
                            color:white;
                            margin-top:20px;
                            }
           
                            
        /*drop down for buttons*/           
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
        /*second container slide image*/
        .mySlides{
                display:none;
            }
        #slide_images{
            width:100%;
            height:70vh;
            }
            
        </style>
    </head>
    <body>
        
        <!--after logout backbutton will not take to login as cache is used-->
         <%
        response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
        if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login.jsp");
        }  
        
        %>
        <!--first header -->
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
                        <a href="status.jsp">IELTS Academic </a>                        
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
          
        <!--second container-->
        <div class="second_container">            
                  
            <div class="mySlides">                
                <div class="bg_imgt">   
                    <p id="text">Every Services that <br>you are looking<br> for is
                        provided by us <br></p>                    
                    <h1>Start your preparation now</h1><br><br>
                    <div class="second_container_button">                    
                        <a class="a"  href="#ielts">Test Prep</a><br>
                    </div> 
                </div> 
            </div>

            <div class="mySlides">                
                <div class="bg_imgth">  
                    <p id="text">Study in popular<br> countries You are one <br>step away to study in </p><br>
                    <h2>Australia • UK • Germany • Canada • USA</h2><br>
                    <div class="second_container_button">
                        <a class="a"  href="#studyabroad">Study Abroad</a><br>
                    </div> 
                </div> 
            </div>
            
            <div class="mySlides">                
                <div class="bg_imgf"> 
                    <p id="text">Every service<br> that you need for<br> Immigration</p><br>
                    <h2>Sim card • Scholarship • Accommodation</h2><br>
                    <div class="second_container_button">
                        <a class="a"  href="#services">Services</a><br>
                    </div>
                </div>        
            </div>
                    
        </div>      
        
        <!--third container test prep -->
        <!--third container heading-->
        
        <div class="container_heading" id="ielts">
            <h1> Start Your Preparation </h1>
        </div>
        
        <!--third container main boxes-->
        <div class="third_container">            
            <div class="cards">
                <h2>IELTS Academic</h2>
            </div>
            <div class="cards">
                <h2>IELTS General</h2>
            </div>
            <div class="cards">
                <h2>TOEFL iBT</h2>
            </div>
            <div class="cards">
                <h2>GRE Prep</h2>
            </div>
            <div class="cards">
                <h2>SAT Prep</h2>
            </div>
        </div>'
          <div class="third_container">            
            <div class="cards">
                <h2>PTE Academic</h2>
            </div>
            <div class="cards">
                <h2> Duolingo English </h2>
            </div>
            <div class="cards">
                <h2> Spoken English </h2>
            </div>
            <div class="cards">
                <h2> Spoken French </h2>
            </div>
            <div class="cards">
                <h2> Spoken German </h2>
            </div>
        </div>
        
        <hr>
        <div class="container_heading">
            <h1 id="text">OUR MAIN SERVICES</h1>
        </div>
        <!--fourth container heading sop-->
        <div class="container_heading">
            <h1>SOP/Resume Writing</h1>
        </div>
        <div class="fourth_conatiner">
            <div class="bg_img_sop">                      
            </div>            
        </div>
        
         <!--fifth container heading-->
        <div class="container_heading">
            <h1>Get Scholarship From Top Universities</h1>
        </div>
         
         <!--fifth container scholarship-->
        <div class="fifth_container">
            <div class="bg_img_scholarship">
                <h1 id="text"> Apply now to get<br> Scholarship from your<br> favourite University</h1>               
                <div class="second_container_button">
                    <a class="a"  href="scholarship.jsp">Apply Now</a><br>
                </div>
            </div>
        </div>
         
         <!-- sixth container heading important services-->
         <div class="container_heading" id="services">
             <h1>Important services</h1>
         </div>
         
         <!-- sixth container all services-->
        <div class="sixth_container"> 
            <a id="a" href="visa.jsp">
            <div class="cards">
                <h2 style="padding-left:10px;padding-right: 10px;">Visa Assistance</h2>
            </div>
            </a>
            <a id="a" href="forex.jsp">
            <div class="cards">
                <h2 style="padding-left:20px;padding-right: 20px;">Forex Service</h2>
            </div>
            </a>
            <a id="a" href="resume.jsp">
            <div class="cards">
                <h2>Resume Writting</h2>
            </div>
            </a>
            <a id="a" href="ticketing.jsp">
            <div class="cards">
                <h2 style="padding-left:15px;padding-right: 15px;">Air Ticketing</h2>
            </div>           
            </a>
        </div>'
        <div class="sixth_container">    
            <a id="a" href="scholarship.jsp">
            <div class="cards">
                <h2 style="padding-left:25px;padding-right: 25px;">Scholarship</h2>
            </div>
            </a>
            </a>
            <a id="a" href="guidance.jsp">
            <div class="cards">
                <h2>Personal Guidance</h2>
            </div>
            </a>
            <a id="a" href="sim.jsp">
            <div class="cards">
                <h2  style="padding-left:40px;padding-right: 40px;">Sim card</h2>
            </div>
            </a>
            <a id="a" href="accommodation.jsp">
            <div class="cards">
                <h2>Accomm odation</h2>
            </div>   
            </a>         
        </div>'
        
        <hr>
        
        <!--seventh container study abroad-->
        <div class="container_heading" id="studyabroad">
             <h1>Study Abroad</h1>
         </div>
        <div class="cards_container">
            <div class="cards_flag bg_usa">
                <h1>USA</h1>
            </div>            
            <div class="cards_flag bg_uk">
                <h1>UK</h1>
            </div>            
            <div class="cards_flag bg_canada">
                <h1>CANADA</h1>
            </div>                  
        </div>
        <div class="cards_container">
            <div class="cards_flag bg_australia">
                <h1>AUSTRALIA</h1>
            </div>            
            <div class="cards_flag bg_newzealand">
                <h1>NEWZEALAND</h1>
            </div>            
            <div class="cards_flag bg_germany">
                <h1>GERMANY</h1>
            </div>                      
        </div>
        
        <hr><!-- comment -->
        
        <!-- eight container for teaching eight container heading-->
        <div class="container_heading">
            <h1>Join Our team</h1>
        </div>
        
        <div class="eight_container">
            <div class="eight_cards">
                <h1> Join us as Recruiter</h1>
            </div>
            <div class="eight_cards">
                <h1> Join us for Teaching</h1>
            </div>            
        </div>
                
        <!--container last container--> 
   <div class="containerlastout">
    <div class="containerlast">
        <div class="containerlastinner">
            <h1>About</h1>
            <h3><a class="a"  href="contact">Contact us</a></h3>
            <h3><a class="a" href="#">About us</a></h3>
            <h3><a class="a" href="#">Join us</a></h3>
            <h3><a class="a" href="#">Help</a></h3>
            <h3><a class="a" href="#">other information</a></h3>
        </div>
        <div class="containerlastinner">
            <h1>Policy</h1>
            <h3><a class="a" href="#">Get Refund</a></h3>
            <h3><a class="a" href="#">Privacy</a></h3>
            <h3><a class="a" href="#">Security</a></h3>
            <h3><a class="a" href="#">Terms of use</a></h3>
            <h3><a class="a" href="#">Recruit</a></h3>
        </div>
        <div class="containerlastinner">
            <h1>Social</h1>
            <h3><a class="a" href="#"><img src="img/email.jpg"></a></h3>
            <h3><a class="a" href="#"><img src="img/whatsapp.jpg"></a></h3>
            <h3><a class="a" href="#"><img src="img/twitter.jpg"></a></h3>
            <h3><a class="a" href="#"><img src="img/youtube.jpg"></a></h3>            
        </div>
    </div>
        <hr style="width:100%;">
        <h1 class="copyright">Copyright all rights reserved © 2020-2021 IMS.com</h1>
</div>
        
        <!--js for slide show--> 
        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");      
            for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";  
            }
            slideIndex++;
            if(slideIndex > slides.length){slideIndex = 1;}    
            slides[slideIndex-1].style.display = "block";  

            setTimeout(showSlides, 3000); 
          }
        </script>  
    </body>
</html>
<br><br>                           
                    