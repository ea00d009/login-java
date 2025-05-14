<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Bienvenido</title></head>
<body>
<h2>Bienvenido <%= request.getAttribute("username") %>!</h2>
<a href="login">Cerrar sesión</a>
</body>
</html>