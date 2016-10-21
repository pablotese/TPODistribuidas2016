<%@ page import="java.util.List" %>
<%@ page import="dto.CargaDTO" %>
<%@ page import="dto.PedidoDTO" %>

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
	PedidoDTO pedido = (PedidoDTO) request.getAttribute("pedido");
	List<CargaDTO> cargas = pedido.getCargas();
%>
<h1>TPO Log&iacute;stica</h1>
<h2>Aplicaciones Distribuidas</h2>

<div id="tabs">
	<ul>
		<li><a href="#tabs-0">Listado de Cargas</a>
		<li><a href="#tabs-1">Administraci&oacute;n de Pedidos</a></li>
		<li><a href="#tabs-2">Administraci&oacute;n de Env&iacute;os</a></li>
		<li><a href="#tabs-3">Administraci&oacute;n de Viajes</a></li>
		<li><a href="#tabs-4">Administraci&oacute;n de Rutas</a></li>
		<li><a href="#tabs-5">Administracicn de Veh&iacute;culos</a>
	</ul>
	<div id="tabs-0">
		<div id="pedido">
			<h1>Pedido #<%= pedido.getIdPedido() %></h1>
			<br />
			<div id="datosPedido">
				<u>Direcci&oacute;n carga</u>: <%= pedido.getDireccionCarga().getCalle() %>&nbsp;<%= pedido.getDireccionCarga().getNumero() %>&nbsp;<%= pedido.getDireccionCarga().getPiso() %>&nbsp;<%= pedido.getDireccionCarga().getDepartamento() %><br />
				<u>Direcci&oacute;n destino</u>: <%= pedido.getDireccionDestino().getCalle() %>&nbsp;<%= pedido.getDireccionDestino().getNumero() %>&nbsp;<%= pedido.getDireccionDestino().getPiso() %>&nbsp;<%= pedido.getDireccionDestino().getDepartamento() %><br />
				<u>Fecha carga</u>: <%= pedido.getFechaCarga() %><br />
				<u>Fecha m&aacute;xima</u>: <%= pedido.getFechaMaxima() %><br />
				<u>Precio</u>: <%= pedido.getPrecio() %><br />
				<u>Sucursal destino</u>: <%= pedido.getSucursalDestino() %><br />
				<u>Cliente</u>: <%= pedido.getCliente().getIdCliente() %><br />
			</div>
			<br />
			<h2>Cargas</h2>
			<table id="tabla" class="display cell-border compact" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>ID</th>
					<th>Peso</th>
					<th>Ancho</th>
					<th>Alto</th>
					<th>Profundidad</th>
					<th>Volumen</th>
					<th>Fragilidad</th>
					<th>Tratamiento</th>
					<th>Apilable</th>
					<th>Refrigerable</th>
					<th>Condiciones</th>
					<th>Despachado</th>
					<th>Tipo de Mercader&iacute;a</th>	
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>ID</th>
					<th>Peso</th>
					<th>Ancho</th>
					<th>Alto</th>
					<th>Profundidad</th>
					<th>Volumen</th>
					<th>Fragilidad</th>
					<th>Tratamiento</th>
					<th>Apilable</th>
					<th>Refrigerable</th>
					<th>Condiciones</th>
					<th>Despachado</th>
					<th>Tipo de Mercader&iacute;a</th>	
				</tr>
			</tfoot>
			<tbody>
				<%
					for(CargaDTO carga: cargas) {
				%>
					<tr>
						<td><%= carga.getIdCarga() %></td>
						<td><%= carga.getPeso() %></td>
						<td><%= carga.getAncho() %></td>
						<td><%= carga.getAlto() %></td>
						<td><%= carga.getProfundidad() %></td>
						<td><%= carga.getVolumen() %></td>
						<td><%= carga.getFragilidad() %></td>
						<td><%= carga.getTratamiento() %></td>
						<td><%= carga.getApilable() %></td>
						<td><%= carga.isRefrigerable() %></td>
						<td><%= carga.getCondiciones() %></td>
						<td><%= carga.isDespachado() %></td>
						<td><%= carga.getTipoMercaderia() %></td>
					</tr>
				<%
					}
				%>
			</tbody>
			</table>
		</div>
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