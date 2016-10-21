<%@ page import="java.util.List" %>
<%@ page import="dto.PedidoDTO" %>
<%@ page import="dto.DireccionDTO" %>
<%@ page import="dto.CargaDTO" %>
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
	List<PedidoDTO> pedidos = (List<PedidoDTO>)request.getAttribute("pedidos");
%>
<h1>TPO Log&iacute;stica</h1>
<h2>Aplicaciones Distribuidas</h2>

<div id="tabs">
	<ul>
		<li><a href="#tabs-0">Listado de Pedidos</a>
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
				<th>Direcci&oacute;n carga</th>
				<th>Direcci&oacute;n destino</th>
				<th>Fecha carga</th>
				<th>Hora inicio</th>
				<th>Hora fin</th>
				<th>Fecha m&aacute;xima</th>
				<th>Cargas</th>
				<th>Precio</th>
				<th>Sucursal destino</th>
				<th>Transporte directo</th>
				<th>Avioneta particular</th>
				<th>Cliente</th>	
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th>ID</th>
				<th>Direcci&oacute;n carga</th>
				<th>Direcci&oacute;n destino</th>
				<th>Fecha carga</th>
				<th>Hora inicio</th>
				<th>Hora fin</th>
				<th>Fecha m&aacute;xima</th>
				<th>Cargas</th>
				<th>Precio</th>
				<th>Sucursal destino</th>
				<th>Transporte directo</th>
				<th>Avioneta particular</th>
				<th>Cliente</th>
			</tr>
		</tfoot>
		<tbody>
			<%
				for(PedidoDTO pedido: pedidos) {
			%>
				<tr>
					<td><%= pedido.getIdPedido() %></td>
					<td><%= pedido.getDireccionCarga().getCalle() %>&nbsp;<%= pedido.getDireccionCarga().getNumero() %>&nbsp;<%= pedido.getDireccionCarga().getPiso() %>&nbsp;<%= pedido.getDireccionCarga().getDepartamento() %></td>
					<td><%= pedido.getDireccionDestino().getCalle() %>&nbsp;<%= pedido.getDireccionDestino().getNumero() %>&nbsp;<%= pedido.getDireccionDestino().getPiso() %>&nbsp;<%= pedido.getDireccionDestino().getDepartamento() %></td>
					<td><%= pedido.getFechaCarga() %></td>
					<td><%= pedido.getHoraInicio() %></td>
					<td><%= pedido.getHoraFin() %></td>
					<td><%= pedido.getFechaMaxima() %></td>
					<td><a href="ListarCargas?id=<%= pedido.getIdPedido() %>">Ver</a></td>
					<td><%= pedido.getPrecio() %></td>
					<td><%= pedido.getSucursalDestino() %></td>
					<td><%= pedido.isSolicitaTransporteDirecto() %></td>
					<td><%= pedido.isSolicitaAvionetaParticular() %></td>
					<td><%= pedido.getCliente().getIdCliente() %></td>
				</tr>
			<%
				}
			%>
		</tbody>
		</table>
	</div>
	<div id="tabs-1">
		<a href="AltaCarga">Alta de Pedidos</a><br />
		<a href="ListarPedidos">Listado de Pedidos</a><br />
		<a href="ControlPedido">Controlar Pedidos</a><br />
	</div>
	<div id="tabs-2">	
		<a href="ContratacionProveedorParaEnvioAlExterior">Contrataci&oacute;n Proveedor para Env&iacute;o al Exterior</a><br />
		<a href="GestionDeSegurosYVehiculos">Gesti&oacute;n de Seguros y Veh&iacute;culos</a><br /><br />
		
		<form action="Despachar" method="POST">
		<input type="button" value="Despachar" onClick="location.href = 'Despachar'">	
		</form>
		</div>
	<div id="tabs-3">
		<a href="ListarViajes">Listar Viajes</a>
	</div>
	<div id="tabs-4">
		<a href="ActualizarRuta">Actualizar Ruta</a><br />
	</div>
	<div id="tabs-5">
		<a href="ControlarVehiculo">Controlar Veh&iacute;culo</a>
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