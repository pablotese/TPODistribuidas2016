<%@ page import="java.util.List" %>
<%@ page import="dto.ClienteDTO" %>

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
	List<ClienteDTO> clientes = (List<ClienteDTO>)request.getAttribute("clientes");
%>
<h1>TPO Log&iacute;stica</h1>
<h2>Aplicaciones Distribuidas</h2>

<div id="tabs">
	<ul>
		<li><a href="#tabs-0">Listar Clientes</a>
		<li><a href="#tabs-1">Administraci&oacute;n de Pedidos</a></li>
		<li><a href="#tabs-2">Administraci&oacute;n de Env&iacute;os</a></li>
		<li><a href="#tabs-3">Administraci&oacute;n de Viajes</a></li>
		<li><a href="#tabs-4">Administraci&oacute;n de Rutas</a></li>
		<li><a href="#tabs-5">Administraci&oacute;n de Veh&iacute;culos</a>
	</ul>
	<div id="tabs-0">
		<table id="tabla" class="display cell-border compact" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>Nombre</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th>ID</th>
				<th>Nombre</th>
			</tr>
		</tfoot>
		<tbody>
			<%
				for(ClienteDTO cliente: clientes) {
			%>
				<tr>
					<td><%= cliente.getIdCliente() %></td>
					<td><%= cliente.getNombre() %></td>
				</tr>
			<%
				}
			%>
		</tbody>
		</table>
	</div>
	<div id="tabs-1">
		<a href="AltaPedido">Alta de Pedidos</a><br />
		<a href="ListarPedidos">Listado de Pedidos</a>
		<a href="ListarClientes">Listado de Clientes</a>
	</div>
	<div id="tabs-2">
		<a href="AltaEnvio">Alta de Env&iacute;o</a><br />
		<a href="ActualizarMapaDeRutas">Actualizar Mapa de Rutas</a><br />
		<a href="ActualizarRuta">Actualizar Ruta</a><br />
		<a href="DemorarViaje">Demorar Viaje</a><br />
		<a href="ContratacionProveedorParaEnvioAlExterior">Contrataci&oacute;n Proveedor para Env&iacute;o al Exterior</a><br />
		<a href="GestionDeSegurosYVehiculos">Gesti&oacute;n de Seguros y Veh&iacute;culos</a>
	</div>
	<div id="tabs-3">
		<a href="ListarViajes">Listar Viajes</a>
	</div>
</div>

<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.dataTables.js"></script>
<script src="js/toastr.js"></script>
<script src="js/logistica.js"></script>
<script src="js/jquery.numeric.js"></script>
</body>
</html>