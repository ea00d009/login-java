<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bienvenido</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
        }

        .welcome-container {
            background-color: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 20px;
            background-color: #4facfe;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px;
        }

        a:hover {
            background-color: #00c3ff;
        }
    </style>
</head>
<body>
<div class="welcome-container">
    <h2>Bienvenido <%= request.getAttribute("username") %>!</h2>
    <a href="login">Cerrar sesión</a>
</div>
</body>
</html>