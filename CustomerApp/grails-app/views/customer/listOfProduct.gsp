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
button{
    margin-left: 1350px;
    margin-top: 5px;
}
</style>
        <form action="/customer/login" method="POST">
             <button>LOG OUT</button>
        </form>
    <div>
        <center><br><br><br><br>
        <h1>LIST OF CUSTOMER PRODUCTS
        </h1>
        
        <table>
            <tr>
                <th>Customer Name</th>
                <th>PRODUCT</th>
                <th>AMOUNT</th>
                <th>BRAND</th>
                <th>RATING</th>
            </tr>

            <%-- -------------------${customerIns?.purchaseList}------------------ --%>
            <g:each in ="${customerIns?.purchaseList}" var="c">
            <tr>
                <td>${customerIns?.name}</td>
                <td>${c.product}</td>
                <td>$ ${c.amount}</td>
                <td>${c.brand}</td>
                <td>${c.rating}</td>

            </tr>
            </g:each>
        </table>
    </div>
    <center><a href="loadProductForms?id=${customerIns?.id}">ADD MORE PRODUCTS</a></center>

</center>
</body>
</html>