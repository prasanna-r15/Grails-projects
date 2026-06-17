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



</style>
<center>
        <h2>FILL THE FORM</h2>
    </center>
    <div>
    <form action="/customer/reset"  onbefore="validateForm()"  method="GET" >
    <center>


                <label>Password (Remember it):</label><br>
               <input type='password' id="password" name="password2" required="required"><br><br>
               <label>Conform Password :</label><br>
               <input type='password' id="password1" name="password3" required="required"><br><br>
              <input type="hidden" name="custId" value="${customerIns?.id}">
                <input type="submit" value="Next" >

            
        </table>
    </center>
    </form>
    </div>
   <script>
  //  onbefore="validateForm()"
    function validateForm(){
      var flag = false;
      var password = document.getElementById("password2").value;
      var password1 = document.getElementById("password3").value;
      if(password == password1){
        flag =true
      }
      console.log("FLag details ", flag);
      return flag;
    }
    </script>
    
</body>
</html>
