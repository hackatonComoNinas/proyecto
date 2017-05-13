<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<script type="text/javascript" src="../profmujer/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../profmujer/bootstrap/css/bootstrap.min.css" type="text/css">
<title>Success Page</title>
</head>
<body>

<%

String name=(String)request.getAttribute("uname");

if(name!=null)
{
    %>
    <h1>Hi welcome <%=name%> </h1>    
<%
}else{
	
	%>
    <h1>name es nulo </h1>    
<%
}
%>
</body>
</html> 