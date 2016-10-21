<%@ page import="java.util.List" %>
<%@ page import="dto.EnvioDTO" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aplicaciones Distribuidas</title>
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/jquery.dataTables.css">
<link rel="stylesheet" href="css/jquery.dataTables_themeroller.css">
<link rel="stylesheet" href="css/toastr.css">
<link rel="stylesheet" href="css/logistica.css">
</head>
<body>
<%
	List<EnvioDTO> envios = (List<EnvioDTO>)request.getAttribute("envios");
%>
<h1>TPO Log&iacute;stica</h1>
<h2>Aplicaciones Distribuidas</h2>

<table id="tabla" class="display cell-border compact" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>Fecha salida</th>
				<th>Fecha llegada</th>
				<th>Cumple condiciones de carga</th>
				<th>Estado</th>	
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th>ID</th>
				<th>Fecha salida</th>
				<th>Fecha llegada</th>
				<th>Cumple condiciones de carga</th>
				<th>Estado</th>
			</tr>
		</tfoot>
			
		<tbody>
			<%
				for(EnvioDTO envio: envios) {
			%>
				<tr>
					<td><%= envio.getIdEnvio() %></td>
					<td><%= envio.getFechaSalida() %></td>
					<td><%= envio.getFechaLlegada() %></td>
					<td><%= envio.isCumpleCondicionesCarga() %></td>
					<td><%= envio.getEstado() %></td>
				</tr>
			<%
				}
			%>
		</tbody>
		</table>

<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.dataTables.js"></script>
<script src="js/toastr.js"></script>
<script src="js/logistica.js"></script>
<script src="js/jquery.numeric.js"></script>
</body>
</html>