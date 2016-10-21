 <%@ page import="java.util.List" %>
<%@ page import="dto.SucursalDTO" %>
<%@ page import="dto.HabilitadoDTO" %> 

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
<%-- <%
	List<SucursalDTO> sucursales = (List<SucursalDTO>)request.getAttribute("sucursales");
	List<HabilitadoDTO> habilitados = (List<HabilitadoDTO>)request.getAttribute("habilitados");
%> --%>
<h1>TPO Log&iacute;stica</h1>
<h2>Aplicaciones Distribuidas</h2>

<div id="tabs">
	<ul>
		<li><a href="#tabs-0">Alta de Cargas</a>
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
		<form action="ActualizarRuta" method="POST">
		<p>
		<label for="IDDestino">ID Destino</label>
		<input class="numeric" type="text" name="IDDestino"" id="IDDestino"" required />
		</p>
		<p>
		<p>
		<label for="IDOrigen">ID Origen</label>
		<input class="numeric" type="text" name="IDOrigen" id="IDOrigen" required />
		</p>
		<p>
		<p>
		<label for="km">Kilometraje</label>
		<input class="numeric" type="text" name="km" id="km" required />
		</p>
		<p>
		<p>
		<label for="precio">Precio</label>
		<input class="numeric" type="text" name="precio" id="precio" required />
		</p>
		<p>
		<label for="tiempo">Tiempo</label>
		<input class="numeric" type="text" name="tiempo" id="tiempo" required />
		</p>
		<p>
		<input class="ui-button-text" type="submit" name="ActualizarRuta" id="ActualizarRuta" value="Actualizar Ruta" />
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