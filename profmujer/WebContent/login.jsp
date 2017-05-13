<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script type="text/javascript" src="../profmujer/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../profmujer/bootstrap/css/bootstrap.min.css" type="text/css">

</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-xs-12 text-xs-center">

<%@ include file = "header.jsp" %>

<br>
<center>
	<div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading" align="center">
               <h3 class="panel-title">Iniciar sesi&oacute;n</h3>
            </div>
            
			<div class="panel-body">
				<form class="form-horizontal" role="form" method="post" action="ingresar.jsp"> 
			
			<fieldset>
			
	
   				<div class="form-group">
      				<label for="correoElec" class="col-lg-2 control-label">Correo electr&oacute;nico</label>
      				<div class="col-lg-10">
        				 <input type="text" class="form-control" id="correoElec" name="correoElec" placeholder="Ingresa correo electrónico">
     				</div>
   				</div>
   		
   				<div class="form-group">
      				<label for="contrasenia" class="col-lg-2 control-label">Contrase&ntilde;a</label>
      				<div class="col-lg-10">
        		 		<input type="password" class="form-control" id="contrasenia" name="contrasenia" placeholder="Ingresa contraseña">
     				</div>
   				</div>
   		
   				<!--
   				<div class="checkbox">
                	<label class="col-lg-2 control-label">
                    	<input name="recordar" type="checkbox" value="Recordarme">Recordarme
                    </label>
                </div> 
   				 -->
   
   				 <div class="form-group">
   				<button type="submit" class="btn btn-primary">Iniciar</button>
   				
   				 <a class='btn btn-default' href='regPersona.jsp' role='button'>Registrarme</a>
   				  
                 </div>
                
   			</fieldset>
   				</form>
			</div>
		</div>
</div>
</center>
<br>
<%@ include file = "footer.jsp" %>

   </div>
</div>
</div>
</body>

</html>