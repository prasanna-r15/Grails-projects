<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>



<body>
<style>
input[type=text] {
  width: 40%;
  border-style: groove;
}
input[type=text]:hover {
    background-color: #EAE3E3;
}
input[type=number] {
  width: 40%;
  border-style: groove;
}
input[type=number]:hover {
    background-color: #EAE3E3;
}
input[type=password] {
  width: 40%;
  border-style: groove;
}
input[type=password]:hover {
    background-color: #EAE3E3;
}
input[type=email] {
  width: 40%;
  border-style: groove;
}
input[type=email]:hover {
    background-color: #EAE3E3;
}
label{
  font-weight: bold;
  text-transform: uppercase;
  color: #2C4235;
  
  text-shadow: 1px 0px 0px red;
}
 

  input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 12px 5px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  input[type=submit]:hover {
    background-color: #45a049;
  }
  #error{
    color:red;
    font-weight: 1000;
  }



</style>
<center>
        <h2>FILL THE FORM</h2>
    </center>
    <div>
    <form action="/customer/verifyEmail"  onSubmit="return validateForm()" method="GET" >
    <center>

        
                <label>Email :</label><br>
                <input type='email' name="email1" required="required"><br>
              <input type="submit" value="Next" >
            
        </table>
    </center>
    </form>
    </div>
    <center>
    <div id="error">${error}</div>
    </center>
    
</body>
</html>
