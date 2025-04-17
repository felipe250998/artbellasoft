<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Crear Cuenta - BellaSoft</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('imagenes/fondo-supermercado.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }

        #container1 {
            width: 100%;
            height: 110px;
            background-color: rgba(15, 64, 245, 1);
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 0;
            left: 0;
        }

        #container1 img {
            height: 80px;
            margin-right: 20px;
        }

        #container1 h1 {
            color: white;
            font-weight: bold;
            font-size: 24px;
            margin: 0;
        }

        .login-container {
            background-color: rgba(15, 64, 245, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
            text-align: center;
            width: 90%;
            max-width: 400px;
            margin-top: 120px;
        }

        label {
            display: block;
            text-align: left;
            margin: 10px 0 5px;
        }

        input {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            margin-bottom: 15px;
            font-size: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: rgba(0, 199, 255, 1);
            color: white;
            font-weight: bold;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
            width: 100%;
        }

        button:hover {
            transform: translateY(-5px);
            background-color: rgba(0, 199, 255, 0.8);
        }

        a {
            color: #fff;
            font-weight: bold;
            text-decoration: none;
        }

        .btn-volver {
            position: fixed;
            top: 20px;
            left: 20px;
            background-color: rgba(0, 199, 255, 0.9);
            color: white;
            padding: 10px 15px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            box-shadow: 0 4px 6px rgba(0,0,0,0.3);
            transition: background-color 0.3s ease, transform 0.2s ease;
            z-index: 1000;
        }

        .btn-volver:hover {
            background-color: rgba(0, 199, 255, 0.7);
            transform: scale(1.05);
        }
    </style>
</head>

<body>
    <div id="container1">
        <img src="imagenes/logo-bellasoft.jpg" alt="Logo">
        <h1>Crear Cuenta - BellaSoft</h1>
    </div>

    <div class="login-container">
        <h2>Registro de Usuario</h2>
        <form action="Svcrear_cuenta" method="post">
            <label for="nombre">Nombre completo:</label>
            <input type="text" id="nombre" name="nombre" required>

            <label for="usuario">Usuario:</label>
            <input type="text" id="usuario" name="usuario" required>

            <label for="correo">Correo electrónico:</label>
            <input type="email" id="correo" name="correo" required>

            <label for="clave">Contraseña:</label>
            <input type="password" id="clave" name="clave" required>

            <button type="submit">Crear cuenta</button>
        </form>

        <div style="margin-top: 15px;">
            <a href="inicio_sesion.jsp">¿Ya tienes cuenta? Inicia sesión aquí</a>
        </div>
    </div>

    <a href="inicio.jsp" class="btn-volver">← Volver al inicio</a>
</body>
</html>
