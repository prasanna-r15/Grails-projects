<html>
<head>
    <meta name="layout" content="main"/>
    <title>List Customers</title>
</head>

<body>
<center>
    <style>
  table, td, th {  
  border: 1px solid #ddd;
  text-align: center;
}

table {
  border-collapse: collapse;
  width: 90%;
}

th, td {
  padding: 15px;
}
tr:nth-child(even) {background-color: #EDF2AE;}
tr:hover {background-color:#FEAF10 ;} 
 

</style>
    
    
    
    <div>
        <center><br><br><br><br>
        <h1>LIST OF CUSTOMERS</h1>
        <table>
            <tr>
                <th>Customer Name</th>
                <th>EMAIL ID</th>
                <th>PHONE</th>
                <th>ADDRESS 1</th>
                <th>ADDRESS 2</th>
                <th>STATE</th>
                <th>PIN CODE</th>
                <th colspan="2">MORE... </th>
            </tr>
            <g:each in ="${listINS}" var="c">
            <tr>
                <td>${c.name}</td>
                <td>${c.email}</td>
                <td>${c.phone}</td>
                <td>${c.address.address1}</td>
                <td>${c.address.address2}</td>
                <td>${c.address.state}</td>
                <td>${c.address.pin}</td>
                <td><a href="/customer/loadProductForms?id=${c?.id}">ADD PRODUCT</a></td>
                <td><a href="/customer/listOfProductHtml?id=${c?.id}">VIEW PRODUCT</a></td>
            </tr>
            </g:each>
        </table>
    </div>

</center>
</body>
</html>