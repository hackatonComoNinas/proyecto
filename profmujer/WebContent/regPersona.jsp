<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script type="text/javascript" src="../profmujer/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../profmujer/bootstrap/css/bootstrap.min.css" type="text/css">

<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-xs-12 text-xs-center">

<%@ include file = "header.jsp" %>
<%
	String correo= (String) request.getParameter("correoElec");
    String contrasenia= (String) request.getParameter("contrasenia");
    
    out.println("<p>correo="+correo+"  contrase&ntilde;a="+contrasenia+"</p>");
%>
<br>
<center>
	<div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading" align="center">
               <h3 class="panel-title">Registro de Usuarios</h3>
            </div>
            
			<div class="panel-body">
				<form class="form-horizontal" role="form" method="post" action="gRegPersona.jsp"">
			<fieldset>
				<div class="form-group">
				<label for="tipoUsuario" class="col-lg-2 control-label">Tipo de Usuario</label>
   					<div class="col-lg-10">
   					<select class="form-control" id="tipoUsuario" name="tipoUsuario">
  						<option value="1">Proveedor de servicio</option>
  						<option value="2">Cliente</option>
					</select>
   					</div>
   				</div>
	
   				<div class="form-group">
      				<label for="nombre" class="col-lg-2 control-label">Nombre </label>
      				<div class="col-lg-10">
        				 <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingresa nombre">
     				</div>
   				</div>
   		
   				<div class="form-group">
      				<label for="primerApellido" class="col-lg-2 control-label">Primer Apellido </label>
      				<div class="col-lg-10">
        		 		<input type="text" class="form-control" id="primerApellido" name="primerApellido" placeholder="Ingresa primer apellido">
     				</div>
   				</div>
   		
   				<div class="form-group">
      				<label for="segundoApellido" class="col-lg-2 control-label">Segundo Apellido</label>
      				<div class="col-lg-10">
         				<input type="text" class="form-control" id="segundoApellido" name="segundoApellido" placeholder="Ingresa segundo apellido">
      				</div>
   				</div>
   				
   					<div class="form-group">
      					<label for="calle" class="col-lg-2 control-label">C&oacute;digo postal</label>
      					<div class="col-lg-10">
         					<input type="text" class="form-control" id="cp" name="cp" placeholder="Ingresa Código Postal">
      					</div>
      				</div>
      				<div class="form-group">
      					<label for="localidad" class="col-lg-2 control-label">Localidad</label>
      						<div class="col-lg-10">
         						<input type="text" class="form-control" id="calle" name="calle" placeholder="Ingresa localidad">
      						</div>
      				</div>
      				<div class="form-group">
      					<label for="ciudad" class="col-lg-2 control-label">Ciudad</label>
      						<div class="col-lg-10">
         						<input type="text" class="form-control" id="calle" name="calle" placeholder="Ingresa Ciudad">
      						</div>
      				</div>
      				<div class="form-group">
      					<label for="telefono" class="col-lg-2 control-label">Tel&eacute;fono</label>
      						<div class="col-lg-10">
         						<input type="text" class="form-control" id="telefono" name="telefono" placeholder="Ingresa número de teléfono ">
      						</div>
   					</div>
   					
   					 <div class="form-group">
   				  <input href="gRegPersona.jsp" class="btn btn-primary">Guardar</input> <a class="btn btn-default" href="formcontinuar.jsp" role="button">Continuar</a>
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