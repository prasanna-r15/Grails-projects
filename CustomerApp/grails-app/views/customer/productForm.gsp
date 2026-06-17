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
             <%-- -----------------${id}---------------- --%>
    <div>
    <form action="/customer/addProduct" method="GET" >
    <center>

                <label for="products">Choose a Category:</label>
                    <select id="prod" name="cateId">
                        <option value="Electronics" >Electronics</option>
                        <option value="Grocery">Grocery</option>
                        <option value="Fashion">Fashion</option>
                        <option value="Appliances">Appliances</option>
                        <option value="Mobiles">Mobiles</option>
                        <option value="Home">Home</option>
                    </select><br>

        
                <label>ImageURL :</label><br>
                <input type='text' name="imageTag"><br>
            
                <label>ProductName :</label><br>
                <input type='text' name="productName"><br>
            
                <label>Discount Amount :</label><br>
                <input type='text' name="disAmount"><br>
           
                <label>Original Amount:</label><br>
                <input type='text' name="orgAmount"><br>
            
                <label>Discount:</label><br>
               <input type='text' name="discount"><br>
            
                <label>Brand Name :</label><br>
                <input type='text' name="brandName"><br>
            
                <label>Rating :</label><br>
               <input type='text' name="ratingNum"><br><br>
            
              <input type="submit" value="SUBMIT" >
            
        </table>
    </center>
    </form>
    </div>
</body>
</html>
