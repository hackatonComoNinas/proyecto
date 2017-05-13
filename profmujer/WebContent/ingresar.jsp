<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*, java.io.*, java.util.*, org.postgresql.*"%>
<%@ page import = "javax.transaction.*"%>

<%@ page import  = "java.util.Date"%>
<%@ page import  = "java.text.SimpleDateFormat"%>
<%@ page import="cbd.*" %> 
 <jsp:useBean id="conexion" class="cbd.AccesoBD" />
<%@page session="true"%>
<%
HttpSession sesionOk=request.getSession(); 
%>
	
	    
		 
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
String correoElec=(String) request.getParameter("correoElec");
String contrasenia=(String) request.getParameter("contrasenia");

if(correoElec==""||contrasenia==""){
	//out.println("<div class=\"alert alert-danger\">");	
	//out.println("<strong>Error!</strong> Ingresa usuario y contaseña");	
	//out.println("<a class='btn btn-default' href='login.jsp' role='button'>Registrarme</a>");	
	//out.println("</div>");	
	 %> 
     <jsp:forwardpage="login.jsp"> 
	 <jsp:param name="error" value="Es obligatorio identificarse"/>
	 </jsp:forward> 
	 <%
	
 	
}else{
	java.sql.Connection conn = conexion.iniciarConexion();
	 //conn = getConnection();
	 //out.println(conn);
	 	if (conn==null)
		  {
					
			out.println("<div class=\"alert alert-danger\">");	
			out.println("<strong>Error!</strong> No se pudo conectar a la base de datos, intentelo mas tarde.");	
			out.println("</div>");	
			%>
		 <jsp:forwardpage=""> 
			 <jsp:param  name="error" value="Es obligatorio identificarse"/>
			 </jsp:forward> >
		  <% 
		  }
		  else
		  {
	   
	        try{
	        	int miusuario=0;
	    		String nombre="";
	        	String ip = ""; 
	        	Date fechaActual = new Date();
	        	SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
	        	String cadenaFecha = formato.format(fechaActual);
	        	java.util.Date date = new java.util.Date();
				java.sql.Timestamp stamp = new java.sql.Timestamp(date.getTime());
	        	ip = "Client ip adress: "+request.getRemoteAddr()+" Client Name Host:"+request.getRemoteHost()+""; 
	            
				


	        	
	    		String sql="select miusuario, nombre, apellidop from miusuario where email='"+correoElec+"' and pass='"+contrasenia+"'";
	    		
	    		 PreparedStatement f = conn.prepareStatement(sql);
	    		 ResultSet rs = f.executeQuery(); 
	    		// out.println("rs=" +rs);
	    		  
	    			 //response.sendRedirect("login.jsp");
	    		 
	    		
	    			 while(rs.next()){
	    				 if(rs.wasNull()){
	    	    			 %>
	    	    			 <jsp:forwardpage=""> 
	    	    				 <jsp:param  name="error" value="El usuario o contaseña no existe"/>
	    	    				 </jsp:forward> >
	    	    			  <%
	    	    			  
	    				 	}else{
	     			    		miusuario = rs.getInt("miusuario");   
	     			   			nombre = rs.getString("nombre")+" "+rs.getString("apellidop");
							 	//out.println(" <div class=\"alert alert-success\">");
	     					 	//out.println("<strong>Success!</strong> You should <a href=\"#\" class=\"alert-link\">read this message</a>.");
	     						// out.println("</div>");
	     					sesionOk.setAttribute("id", miusuario);
	     					sesionOk.setAttribute("nom", nombre);
	     			   		response.sendRedirect("misession.jsp");
	    		 	}
	     			 }
	     			 rs.close();
	     		 
	     			String insertasql ="insert into accesos_usuario(idusuario,fecha,ip) values ("+miusuario+",'"+stamp+"','"+ip+"')";
		        	boolean res= conexion.insertar(insertasql);
		        	
		        	//System.out.println("inserta r:es"+ res);
	    		 
	 	 
	    		conexion.cerrarConexion(conn); 	
	        	}catch(Exception e){
	          out.println("<p>Error al acceder a la base de datos</p>"+e);
	        }
	    	}


		
		

	
}

	

%>

	<%@ include file = "footer.jsp" %>

</div>
</div>
</div>
</body>







</html>