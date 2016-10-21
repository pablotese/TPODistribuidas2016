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
<link rel="stylesheet" href="css/login.css">
</head>
<body>

<h1>TPO Log&iacute;stica</h1>
<h2>Aplicaciones Distribuidas</h2>

<form action="LogIn" method="POST">
<br>
<p>
<label for="user">Usuario</label>
</p>
<p>
<input type="text" name="username" id="username" required />
</p>
<p>
<label for="password">Contrase�a</label>
</p>
<p>
<input type="password" name="password" id="password" required  />
</p>
<p>
<input type="submit" value="login">
</p>
<span class="error">${error}</span>
</form>


<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.dataTables.js"></script>
<script src="js/toastr.js"></script>
<script src="js/logista.js"></script>
</body>
</html>