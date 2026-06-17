<html>
<head>
    <title>Welcome to Grails</title>
    
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
</head>



<body style="background-image: url('img_girl.jpg');">
<style>
    input[type=text] {
      /* width: 40%; */
      border-style: groove;
    }
    /* input[type=text]:hover {
        background-color: #EAE3E3;
    } */
    /* label{
      font-weight: bold;
      text-transform: uppercase;
      color: #2C4235;
      
      text-shadow: 1px 0px 0px red;
    } */
    

      input[type=submit] {
        width: 50%;
        background-color: #4CAF50;
        color: white;
        padding: 8px 2px;
        margin-left: 500px
        border: none;
        border-radius: 10px;
        cursor: pointer;
      }

      input[type=submit]:hover {
        background-color: #45a049;
      }
      /* .column {
      float: left;
      width: 25%;
      padding: 0 10px;
    } */
    /* .row {margin: 0 -5px;}
    .row:after {
      content: "";
      display: table;
      clear: both;
    } */
    /* @media screen and (max-width: 600px) {
      .column {
        width: 100%;
        display: block;
        margin-bottom: 20px;
      }
    } */
    .card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      padding: 16px;
      text-align: center;
      background-color: #f1f1f1;
      height: 500px;
      width: 300px;
      margin-top: 40px
    }
    h1{
      font-size: 15px;
      margin-top: 4px;
    }
    h2{
      color:red;
      font-size: 15px;
      margin-top: 4px;
    }
    h3{
      color:#5DD827;
      font-size: 18px;
      margin-top: 4px;
    }
    h4{
      color:gray;
      font-size: 15px;
      margin-top: 4px;
    }
    h5{
      font-weight: bold;
      font-size: 40px;
      color:#142F96;
      
    }
    h6{
      font-weight: bold;
      font-size: 50px;
      color:#931C49;
    }
    strike{
      color:black;
    }
    /* #id{
        height: 50px;
        width: 140px;
        margin-top: 20px;
        margin-left: auto;
      margin-right: auto;
    } */
    img{
        height: 200px;
        width: 200px;
        display: block;
      margin-left: auto;
      margin-right: auto;
    }
    #but{
      margin-left: 1350px;
      margin-top: 5px;
      background-color:#28D3B8;
        color: white;
        /* margin: 8px 0; */
        width: 8%;
        height: 25px;
        margin-left: 500px
        border: none;
        border-radius: 10px;
        cursor: pointer;
    }
    #srch[type=text] {
      width: 130px;
      box-sizing: border-box;
      border: 2px solid #ccc;
      border-radius: 10px;
      font-size: 16px;
      background-color: white;
      background-image: url('C:\Users\Prasanna\Downloads\—Pngtree—find store glyph icon vector_5058470.png');
      background-position: 10px 10px; 
      padding: 12px 20px 12px 40px;
      transition: width 0.4s ease-in-out;
      margin-left: 10px;
       margin-top: 5px;
    }
     .header {
    padding: 0.05px;
    text-align: center;
    background: #C6D827;
    color: white;
    height: 70px;
    font-size: 20px;
    }

h8{
    padding-top: 25px;
    padding-bottom: 25px;
}
    



</style>
        <div class="header">
            <h8>ＳＥＲＧＩＯ  -  ＭＡＲＴ ⇅</h8>
        </div>
        <form action="/customer/login" method="POST">
             <button id="but">LOG OUT</button>
        </form>
         <form>
        <input type="text" name="search" placeholder="Search.." id="srch">
    </form>
<center>
        <h6>SELECT YOUR PRODUCTS</h6>
    </center>
     <%-- --------------------------${id}------------------------- --%>
     
        <g:each in ="${categoryList}" var="c">
            <h5>${c.name}</h5>
            <g:each in ="${c.productList}" var="d">
            <%-- <div> --%>
                    <form action="/customer/addPurchase" method="GET">
                    <row>
                      <div class="col-sm-4" >
                        <div class="container"> 
                          <div class="card" style="width:400px;">
                              <img src="${d.imageTag}"  alt="Avatar" style="width:50%;">
                              <h1 name="product">${d.productName}</h1>
                              <input name="product" type="hidden" value="${d.productName}">
                              <h2 name="amount"> ${d.disAmount}<strike> ${d.orgAmount}</strike> ${d.discount}% off</h2>
                              <input name="amount" type="hidden" value="${d.disAmount}">
                              <h3 name="brand">${d.brandName}</h3>
                              <input name="brand" type="hidden" value="${d.brandName}">
                              <h4 name="rating">${d.ratingNum}</h4>
                              <input name="rating" type="hidden" value="${d.ratingNum}">
                              <input type="hidden" id="custId" name="custId" value="${id}">
                              <input type="submit" value="ADD TO CART" id="id" style="padding-left: 2px;margin-left: 90px;margin-top: 20px;">
                          </div>
                        </div>
                      </div>
                      </row>
                    </form> 
                    
            <%-- </div>--%>
            </g:each>
        </g:each>
         
        
           
     </body>
</html>
