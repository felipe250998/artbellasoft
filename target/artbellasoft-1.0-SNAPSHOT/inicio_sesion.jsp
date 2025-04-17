<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - BellaSoft</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
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
            animation: pulse 2s infinite;
        }

        #container1 h1 {
            color: white;
            font-weight: bold;
            font-size: 24px;
            margin: 0;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        .login-container {
            background-color: rgba(15, 64, 245, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
            text-align: center;
            width: 90%;
            max-width: 400px;
            animation: slideInUp 1s ease forwards;
        }

        @keyframes slideInUp {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .login-container h2 {
            margin-bottom: 20px;
        }

        label {
            display: block;
            text-align: left;
            margin: 10px 0 5px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            margin-bottom: 15px;
            box-sizing: border-box;
            font-size: 16px;
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

        .extra-links {
            margin-top: 15px;
        }

        .extra-links a {
            color: #fff;
            font-weight: bold;
            text-decoration: none;
            display: block;
            margin: 5px 0;
        }

        footer {
            margin-top: 15px;
            font-size: 14px;
            color: #ccc;
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
        <h1>Iniciar Sesión - BellaSoft</h1>
    </div>

    <div class="login-container">
        <h2>Ingreso de Usuarios</h2>

        <% 
            String error = request.getParameter("error");
            if ("1".equals(error)) {
        %>
            <p style="color: yellow;"><b>⚠ Usuario o clave incorrectos.</b></p>
        <% 
            } else if ("2".equals(error)) {
        %>
            <p style="color: red;"><b>❌ Error al conectar con la base de datos.</b></p>
        <% 
            }
        %>

        <form action="Svinicio_sesion" method="post">
            <label for="usuario">Usuario:</label>
            <input type="text" id="usuario" name="usuario" placeholder="Usuario" required>

            <label for="clave">Clave:</label>
            <input type="password" id="clave" name="clave" placeholder="Clave" required>
    
            <button type="submit">Ingresar</button>
        </form>

        <div class="extra-links">
            <button onclick="window.location.href='crear_cuenta.jsp'">Crear cuenta</button>
            <a href="recuperar_contraseña.jsp">¿Has olvidado tu contraseña?</a>
        </div>

        <footer>
            <p><b>BELLASOFT V1.0. 2025</b></p>
        </footer>
    </div>

    <a href="inicio.jsp" class="btn-volver">← Volver al inicio</a>

</body>

</html>
