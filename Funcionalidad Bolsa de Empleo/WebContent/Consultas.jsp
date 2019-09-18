
<%@page import="java.sql.Connection"%>
<%@page import="com.DB"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nombres y cédula de los artesanos</title>
</head>
<body>
<%
Connection con = DB.con();
Statement p = con.createStatement();
ResultSet rs = p.executeQuery("select * from perpersona");
String nombre, cedula, apellido;
int numDatos=10;
%>
<h1>Nombres Apellidos cédula de Artesanos</h1>
<%for(int i = 0; i < numDatos; i++){ 
	rs.next(); 
	nombre = rs.getString("NOMBRES");
	apellido= rs.getString("APELLIDOS");
	cedula= rs.getString("CEDULA");%>
	<h1><%=nombre %>   <%=apellido %>-- <%=cedula %></h1>
	<br/>
<%}%>
</body>
</html>