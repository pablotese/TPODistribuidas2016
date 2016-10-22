<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Aplicaciones Distribuidas</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" href="css/styles.css">
	</head>
	<body class="container-fluid">
		<header class="row">
			
		</header>
		<div class="row">
			<nav class="col-md-3">
				<ul class="nav nav-pills nav-stacked">
					<li>
						<a href="index">Home</a>
					</li>
					<li class="active">
						<a href="AltaCarga">Alta de Cargas</a>
					</li>
					<li>
						<a>Administraci�n de Pedidos</a>
						<ul>
							<li><a href="AltaCarga">Alta de Pedidos</a></li>
							<li><a href="ListarPedidos">Listado de Pedidos</a></li>
							<li><a href="ControlPedido">Controlar Pedidos</a></li>
						</ul>
					</li>
					<li>
						<a>Administraci�n de Env�os</a>
						<ul>
							<li><a href="ContratarProveedor.jsp">Contrataci�n Proveedor para Env�o al Exterior</a></li>
							<li><a href="GestionDeSegurosYVehiculos">Gesti�n de Seguros y Veh�culos</a></li>
							<li><a href="Despachar">Despachar</a></li>
						</ul>
					</li>
					<li>
						<a>Administraci�n de Viajes</a>
						<ul>
							<li><a href="ListarViajes">Listar Viajes</a></li>
						</ul>
					</li>
					<li>
						<a>Administraci�n de Rutas</a>
						<ul>
							<li><a href="ActualizarRuta">Actualizar Ruta</a></li>
						</ul>
					</li>
					<li>
						<a>Administraci�n de Veh�culos</a>
						<ul>
							<li><a href="ControlarVehiculo">Controlar Veh�culo</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<main class="col-md-9">
				<section class="col-md-12">
					<h1>Alta Carga</h1>
					<% String error = (String)request.getAttribute("error");
					if(error != null) { %>
					<div class="ui-widget">
						<div class="ui-state-error ui-corner-all" style="padding: 0 .7em;">
							<p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;"></span>
							<strong>Error:</strong> <%= error %></p>
						</div>
					</div>
					<% } %>
					<form action="AltaCarga" method="POST">
						<div class="row">
							<div class="col-md-4">
								<label for="peso">Peso</label>
								<input type="number" name="peso" id="peso" class="form-control" required>
							</div>
							<div class="col-md-4">
								<label for="ancho">Ancho</label>
								<input type="number" name="ancho" id="ancho" class="form-control" required>
							</div>
							<div class="col-md-4">
								<label for="alto">Alto</label>
								<input type="number" name="alto" id="alto" class="form-control" required>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4">
								<label for="profundidad">Profundidad</label>
								<input type="number" name="profundidad" id="profundidad" class="form-control" required>
							</div>
							<div class="col-md-4">
								<label for="volumen">Volumen</label>
								<input type="number" name="volumen" id="volumen" class="form-control" required>
							</div>
							<div class="col-md-4">
								<label for="fragilidad">Fragilidad</label>
								<input type="text" name="fragilidad" id="fragilidad" class="form-control" required>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-4">
								<label for="tratamiento">Tratamiento</label>
								<input type="text" name="tratamiento" id="tratamiento" class="form-control" required>
							</div>
							<div class="col-md-4">
								<label for="apilable">Apilable</label>
								<input type="text" name="apilable" id="apilable" class="form-control" required>
							</div>
							<div class="col-md-4">
								<label for="refrigerable">Refrigerable</label>
								<input type="checkbox" name="refrigerable" id="refrigerable" required>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4">
								<label for="condiciones">Condiciones</label>
								<input type="text" name="condiciones" id="condiciones" class="form-control" required>
							</div>
							<div class="col-md-4">
								<label for="despachado">Despachado</label>
								<input type="text" name="despachado" id="despachado" class="form-control" required>
							</div>
							<div class="col-md-4">
								<label for="tipoDeMercaderia">Tipo de Mercader�a</label>
								<input type="text" name="tipoDeMercaderia" id="tipoDeMercaderia" class="form-control" required>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4">
								<label for="condiciones">Condiciones</label>
								<input type="text" name="condiciones" id="condiciones" class="form-control" required>
							</div>
							<div class="col-md-4">
								<label for="despachado">Despachado</label>
								<input type="text" name="despachado" id="despachado" class="form-control" required>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<input class="btn btn-primary btn-block" type="submit" name="AltaCarga" id="AltaCarga" value="Agregar Carga" />
							</div>
						</div>
					</form>

					<form action="AltaCarga" method="POST">
						<input type="button" value="Continuar" onClick="location.href = 'AltaPedido'" class="btn btn-primary btn-block">
					</form>
				</section>
			</main>
		</div>
	</body>
</html>