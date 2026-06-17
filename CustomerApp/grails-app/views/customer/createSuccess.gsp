<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
<center>
    <h1>YOUR RESPONSE SAVED SUCCESSFULLY !!!</h1><br><br><br>
   <h1>Thanks</h1>  ${customerINS?.name}<br>
    <h1>Chech your Mail-Id --</h1>${customerINS?.email}<br>
    ${new Date()}<br>
    <a href="/customer/listOfCustomerHtml">Click here !! to view the Details</a>
</center>
</body>
</html>