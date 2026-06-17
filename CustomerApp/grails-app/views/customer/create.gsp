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
    <form action="/customer/addNewCustomer"  onSubmit="return validateForm()" method="GET" >
    <center>

        
                <label>Name :</label><br>
                <input type='text' name="name" required="required"><br>
            
                <label>Email :</label><br>
                <input type='email' name="email" required="required"><br>
            
                <label>Phone :</label><br>
                <input type='number' name="phone" required="required"><br>

                <label>Password (Remember it):</label><br>
               <input type='password' id="password" name="password" required="required"><br><br>

               <label>Re-Enter Password :</label><br>
               <input type='password' id="password1" name="password1" required="required"><br><br>
           
                <label>ADDRESS 1 :</label><br>
                <input type='text' name="address1" required="required"><br>
            
                <label>ADDRESS 2 :</label><br>
               <input type='text' name="address2" required="required"><br>
            
                <label>STATE :</label><br>
                <input type='text' name="state" required="required"><br>
            
                <label>PIN-CODE :</label><br>
               <input type='number' name="pin" required="required"><br><br>
            
              <input type="submit" value="Next" >
            
        </table>
    </center>
    </form>
    </div>
   <script>
    function validateForm(){
      alert("hii")
      var flag = false;
      var password = document.getElementById("password").value;
      var password1 = document.getElementById("password1").value;
      if(password == password1){
        flag =true
      }
      return flag;
    }
   </script>
    
</body>
</html>
