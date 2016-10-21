<%@ page import="java.util.List" %>
<%@ page import="dto.SucursalDTO" %>
<%@ page import="dto.HabilitadoDTO" %>
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
	List<SucursalDTO> sucursales = (List<SucursalDTO>)request.getAttribute("sucursales");
	List<ClienteDTO> clientes = (List<ClienteDTO>)request.getAttribute("clientes");
%>
<h1>TPO Log&iacute;stica</h1>
<h2>Aplicaciones Distribuidas</h2>

<div id="tabs">
	<ul>
		<li><a href="#tabs-0">Alta de Pedidos</a>
		<li><a href="#tabs-1">Administraci&oacute;n de Pedidos</a></li>
		<li><a href="#tabs-2">Administraci&oacute;n de Env&iacute;os</a></li>
		<li><a href="#tabs-3">Administraci&oacute;n de Viajes</a></li>
		<li><a href="#tabs-4">Administraci&oacute;n de Rutas</a></li>
		<li><a href="#tabs-5">Administraci&oacute;n de Veh&iacute;culos</a>
	</ul>
	<div id="tabs-0">
		<% String error = (String)request.getAttribute("error");
		if(error != null) { %>
		<div class="ui-widget">
			<div class="ui-state-error ui-corner-all" style="padding: 0 .7em;">
				<p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;"></span>
				<strong>Error:</strong> <%= error %></p>
			</div>
		</div>
		<% } %>
		<form action="AltaPedido" method="POST">
		<p>
		<label for="direccionCarga">Direcci&oacute;n de carga</label>
		</p>
		<p>
		<label for="calleCarga">Calle</label>
		<input type="text" name="calleCarga" id="calleCarga" min="1" required />
		</p>
		<p>
		<label for="numeroCarga">N&uacute;mero</label>
		<input class="numeric" type="text" name="numeroCarga" id="numeroCarga" required />
		<label for="pisoCarga">Piso</label>
		<input class="numeric" type="text" name="pisoCarga" id="pisoCarga" required />
		</p>
		<p>
		<label for="deptoCarga">Departamento</label>
		<input type="text" name="deptoCarga" id="deptoCarga" required />
		<label for="cpCarga">C&oacute;digo Postal</label>
		<input class="numeric" type="text" name="cpCarga" id="cpCarga" required />
		</p><br/>
		<p>
		<label for="direccionDestino">Direcci&oacute;n de destino</label>
		</p>
		<p>
		<label for="calleDestino">Calle</label>
		<input type="text" name="calleDestino" id="calleDestino" min="1" required />
		</p>
		<p>
		<label for="numeroDestino">N&uacute;mero</label>
		<input class="numeric" type="text" name="numeroDestino" id="numeroDestino" required />
		<label for="pisoDestino">Piso</label>
		<input class="numeric" type="text" name="pisoDestino" id="pisoDestino" required />
		</p>
		<p>
		<label for="deptoDestino">Departamento</label>
		<input type="text" name="deptoDestino" id="deptoDestino" required />
		<label for="cpDestino">C&oacute;digo Postal</label>
		<input class="numeric" type="text" name="cpDestino" id="cpDestino" required />
		</p><br/> 
		<p>
		<label for="solicitaTransporte">Solicita transporte al exterior</label>
		<select id="solicitaTransporte">
			<option selected="selected">Seleccione una opcion...</option>
			<option value="opcion">No Solicita</option>
			<option value="opcion">Avion</option>
			<option value="opcion">Avioneta</option>
			<option value="opcion">Barco</option>
		</select>	
		</p>
		<p>			
		<label for="fechaCarga">Fecha de carga</label>
		<input type="date" name="fechaCarga" id="fechaCarga" required />
		</p>
		<p>
		<label for="horaInicio">Hora de inicio</label>
		<input type="time" name="horaInicio" id="horaInicio" required/>
		</p>
		<p>
		<label for="horaFin">Hora de fin</label>
		<input type="time" name="horaFin" id="horaFin" required/>
		</p>
		<p>
		<label for="fechaMaxima">Fecha m&aacute;xima</label>
		<input type="date" name="fechaMaxima" id="fechaMaxima" required />
		</p>
		<p>
		<label for="sucursalOrigen">Sucursal de origen</label>
		<select name="sucursalOrigen">
			<option selected="selected">Seleccione una opcion...</option>
			<%
			for(SucursalDTO s: sucursales)
			{
			%>
				<option value=<%= s.getIdSucursal() %>><%= s.getIdSucursal() %></option>
			<%
			}
			%>
		</select>
		</p>
		<p>
		<label for="sucursalDestino">Sucursal de destino</label>
		<select name="sucursalDestino">
			<option selected="selected">Seleccione una opcion...</option>
			<%
			for(SucursalDTO s: sucursales)
			{
			%>
				<option value=<%= s.getIdSucursal() %>><%= s.getIdSucursal() %></option>
			<%
			}
			%>
		</select>
		</p>
		<p>
		<label for="solicitaTransporteDirecto">Solicita transporte directo</label>
		<input type="checkbox" name="solicitaTransporteDirecto" id="solicitaTransporteDirecto" min="1" required />
		</p>
		<p>
		<label for="solicitaAvionetaParticular">Solicita avioneta particular</label>
		<input type="checkbox" name="solicitaAvionetaParticular" id="solicitaAvionetaParticular" min="1" required />
		</p>
		<p>
		<label for="cliente">Cliente</label>
		<select name="cliente">
			<option selected="selected">Seleccione una opcion...</option>
			<%
			for(ClienteDTO c: clientes)
			{
			%>
				<option value=<%= c.getIdCliente() %>><%= c.getIdCliente() %></option>
			<%
			}
			%>
		</select>
		</p>
		<p>
		<input class="ui-button-text" type="submit" name="enviar" id="enviar" value="Enviar" />
		</p>
		</form>
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