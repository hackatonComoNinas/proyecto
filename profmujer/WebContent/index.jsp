<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script type="text/javascript" src="../profmujer/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../profmujer/metis/metisMenu.min.js"></script>
<link rel="stylesheet" href="../profmujer/bootstrap/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../profmujer/metis/metisMenu.min.css" type="text/css">
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>



<title>Servicios Profesionales</title>
</head>
<body>
<%@ include file = "header.jsp" %>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="/../profmujer/imagenes/banner4.jpg?text=Ingeniera"  height="150" width="80" alt="Image">
        <div class="carousel-caption">
          <h3>Ingeniera</h3>
          <p>Dise&ntilde;a, construye, crea</p>
        </div>      
      </div>

      <div class="item">
        <img src="/../profmujer/imagenes/banner2.jpg?text=Taxista" height="150" width="80" alt="Image">
        <div class="carousel-caption">
          <h3>Taxista</h3>
          <p>Conduce, acompa&ntilde;a, confianza</p>
        </div>      
      </div>
      
       <div class="item">
        <img src="/../profmujer/imagenes/banner3.jpg?text=Medico" height="150" width="80" alt="Image">
        <div class="carousel-caption">
          <h3>M&eacute;dico</h3>
          <p>Diagnostica, trata, sana </p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Anterior</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Siguiente</span>
    </a>
</div>
  
<div class="container text-center">    
  <h3>Elige el servicio!</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="/../profmujer/imagenes/salud.jpg?text=Medico" height="75" width="40" class="img-responsive" style="width:100%" alt="Image">
      <p>Profesionales en la salud</p>
    </div>
     <div class="col-sm-4"> 
      <img src="/../profmujer/imagenes/transporte.jpg?text=Ingeniera" height="75" width="40" class="img-responsive" style="width:100%" alt="Image">
      <p>Profesionales en Transporte</p>    
    </div>
    <div class="col-sm-4"> 
      <img src="/../profmujer/imagenes/ingenieria.jpg?text=Ingeniera" height="75" width="40" class="img-responsive" style="width:100%" alt="Image">
      <p>Profesionales en Ingenier&iacute;a</p>    
    </div>
    <div class="col-sm-4">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
    </div>
  </div>
</div><br>



<%@ include file = "footer.jsp" %>







</body>
</html>