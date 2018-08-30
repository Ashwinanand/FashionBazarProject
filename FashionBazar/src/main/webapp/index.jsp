
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/Header.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here
</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
</head>

<body>
<div class="container">
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
    <li data-target="#demo" data-slide-to="4"></li>
     
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="resources/images/Men.jpg" alt="Men" width="1100" height="500">
        <div class="carousel-caption">
    <h3>Men</h3>
    <p>Fashion pride</p>
   </div>
    </div>
    <div class="carousel-item">
    <img src="resources/images/Women.jpg" alt="Women" width="1100" height="500">
        <div class="carousel-caption">
    <h3>Women</h3>
    <p>Large range of Fashion</p>
  </div>
    </div>
    <div class="carousel-item">
    <img src="resources/images/Kids.jpg" alt="Kids" width="1100" height="500">
    
    <div class="carousel-caption">
    <h3>Kids</h3>
    <p>Stylish kid brands</p>
    </div>
    </div>
    <div class="carousel-item">
    <img src="resources/images/Electronics.jpg" alt="Electronics" width="1100" height="500">
    
    <div class="carousel-caption">
    <h3>Electronics</h3>
    <p>Variety of Electronics</p>
    </div>
    </div>
    <div class="carousel-item">
    <img src="resources/images/Books.jpg" alt="Books" width="1100" height="500">
     
    <div class="carousel-caption">
    <h3>Books</h3>
    <p>Bookworm?Log in and view latest books</p>
    </div>
    </div>
  </div>
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</div>

</body>
</html>