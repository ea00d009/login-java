<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Login</title></head>
<body>
<h2>Login</h2>
<form method="post" action="login">
    Usuario: <input type="text" name="username" /><br/>
    Contraseña: <input type="password" name="password" /><br/>
    <input type="submit" value="Ingresar" />
</form>
<% if (request.getAttribute("error") != null) { %>
    <p style="color:red"><%= request.getAttribute("error") %></p>
<% } %>
</body>
</html>