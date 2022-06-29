<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login Page</title>
        <style>
           
            .container{
                height:100vh;
                width:100%;               
                display:flex;
                align-items:center;
                justify-content: center;
                color:white;
                opacity: 1;
                position:relative;
            }
            .bg_image:before{
                position:absolute;
                content:'';
                top:0px;
                right:0px;
                bottom:0px;
                left:0px;
                background-image:url("img/ims6.jpg");
                background-repeat:no-repeat;                                
                background-size:100% 100%;
                opacity:0.7;
               
            }
             .form_container{
                 position:relative;
                height:50vh;
                width:40%;                 
                border-radius:10px;
                display:flex;                
                align-items:center;
                justify-content: center;
                color:white;                
                background-image:url("img/login.jpg");
                background-repeat:no-repeat;                                
                background-size:100% 100%;
            }
            #btn{
                background-color:rgba(255,255,255,0); 
                border:1px solid rgba(255,255,255,0);
                border-radius:10px;
                width:100px;
                height:50px;               
                font-size:26px;
                cursor:pointer;
                margin-left:150px;
                color:white;
            }
            #btn:hover{
                background-color:rgba(255,255,255,0.5);
            }
            .inpt{
                border:1px solid white;
                border-radius: 5px;
                width:200px;
                height:50px;
            }
            .text{
                font-size:22px;
            }
        </style>
    </head>
    <body>
        <div class="container bg_image">
            <div class="form_container">            
                <form action="Login" method='post'>
                    <label class="text" for="uname">Enter Username : </label>
                    <input class="inpt text" id="uname"  type="text" name="uname" maxlength="15" autofocus><br><br>
                    <label class="text" for="pass">Enter Password : </label><!-- comment -->
                    <input class="inpt text" id="pass" type="password" name="pass"><br><br>
                    <input id="btn" type="submit" value="Login">
                </form>
            </div>
        </div>
            
    </body>
</html>
