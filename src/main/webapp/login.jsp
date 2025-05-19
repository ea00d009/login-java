<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Login</title></head>
<body>
    <h2>Iniciar Sesión</h2>
    <form action="login" method="post">
        Usuario: <input type="text" name="username"><br>
        Contraseña: <input type="password" name="password"><br>
        <input type="submit" value="Ingresar">
    </form>
    <p style="color:red;">${error}</p>
</body>
</html>