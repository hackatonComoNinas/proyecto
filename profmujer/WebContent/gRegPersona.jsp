<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="cbd.*" %> 
 <jsp:useBean id="conexion" class="cbd.AccesoBD" />

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
<%
String tipoUsuario = request.getParameter("tipoUsuario");
String nombre= request.getParameter("nombre");
String primerApellido= request.getParameter("primerApellido");
String segundoApellido= request.getParameter("segundoApellido");
String calle= request.getParameter("calle");
String localidad= request.getParameter("localidad");
String ciudad= request.getParameter("ciudad");
String telefono= request.getParameter("telefono");



// Ahora hacemos la consulta a la base de datos para conocer si el usuario es valido
 java.sql.Connection conn = conexion.iniciarConexion();

 if (conn==null)
 {
	out.println("<table align='center' border=0><tr><td> <font face='arial' size='2' color='red'>"+"No se pudo conectar a la base de datos, intentelo mas tarde"+
				  " </font> </td> </tr>		</table>");
 }
 else
 {
	 
	   try{                  
		   String sql="insert into usuarios(tipoUsuario,nombre,primerApellido, segundoApellido, calle, localidad, ciudad,telefono) values("+tipoUsuario+",'"+nombre+"','"+primerApellido+"','"+segundoApellido+"','"+calle+"','"+localidad+"','"+ciudad+"','"+telefono+"')";
		      
		   boolean res=conexion.insertar(sql);


		    
		 	  if(!res)
		 	  {
		 		 out.println("<h3 id='color'><center>Inserci&oactue;n realizada</center></h3>"); 
		 	  }
		 	  else
		 	  {
		 	  	out.println("<h3 id='color'><center>Error al Actualizar</center></h3>");    
		 	  }          
		 %>  	
		 
		    <%      
		    
			 conexion.cerrarConexion(conn);
		   

		    }catch(Exception e){
		    out.print("<h3>Error getting Connection...</h3>");
		    }
 	  
 }

%>

<br>
<%@ include file = "footer.jsp" %>

   </div>
</div>
</div>
</body>

</html>