<html>
<head>
    <meta name="layout" content="main"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to Grails</title>
</head>



<body>
<style>
input[type=password]{
    height: 47px;
    width: 205px;
    width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
    
    
}
input[type=submit]{
     height: 47px;
    width: 205px;
    margin-left: 132px;
    background-color: #04AA6D;
    color: white;
    border: none;
  cursor: pointer;
  border-radius: 12px;

    
}
button:hover {
  opacity: 0.8;
}
input[type=email]{
     height: 47px;
    width: 205px;
    width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
    
}
#ref{
    
    margin-left: 690px
}
#error{
    margin-left: 640px;
    color:red;
    font-weight: 1000;
}
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

#fp{
    margin-left: 34px;
}

img.avatar {
  width: 10%;
  border-radius: 50%;
}






</style>
<center>

        <%-- <h2>WELCOME TO SERIGIO-MART</h2> --%>
    </center><br><br><br><br>
    <div>
    <form action="/customer/userInfo" method="GET" >
    <center>
                <div class="imgcontainer">
                    <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar">
                </div>
                <label for="uname"><b>Username</b></label>
                <input type='email' name="email" placeholder="Enter your valid E-mail"><br><br>
                <label for="psw"><b>Password</b></label>
                <input type='password' name="password" placeholder="Enter your valid password"><br><br>
                <input type="submit" value="LOGIN" >
                <a href="emailV" id="fp">forgot password ?</a><br>
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                 </label>

                 
                
            
        </table>
    </center>
    </form>
    <div id="error">${error}</div>
        <a href="loadCreateCustomerForms" id="ref">New User ? SIGN-UP</a><br><br>
    </div>
</body>
</html>