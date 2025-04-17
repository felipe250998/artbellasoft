<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>

<%
    HttpSession sesion = request.getSession(false);
    String usuario = null;

    if (sesion != null) {
        usuario = (String) sesion.getAttribute("usuario");
    }

    if (usuario == null) {
        response.sendRedirect("inicio_sesion.jsp?error=1");
        return;
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Bienvenido - BellaSoft</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: url('imagenes/fondo-supermercado.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            position: relative;
        }

        body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            z-index: -1;
        }

        .container {
            background-color: rgba(15, 64, 245, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.5);
            text-align: center;
            animation: slideInDown 1s ease;
        }

        #container1 {
            margin-bottom: 20px;
        }

        #container1 img {
            height: 100px;
            animation: pulse 2s infinite;
        }

        h1 {
            margin: 20px 0 10px;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        @keyframes slideInDown {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .icon {
            font-size: 30px;
            margin-bottom: 10px;
        }

        button {
            background-color: rgba(0, 199, 255, 1);
            color: white;
            font-weight: bold;
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: rgba(0, 199, 255, 0.8);
            transform: scale(1.05);
        }

        .user-info {
            margin-top: 10px;
            font-size: 16px;
            font-style: italic;
        }
    </style>
</head>
<body>

    <div class="container" id="container1">
        <img src="imagenes/logo-bellasoft.jpg" alt="Logo BellaSoft" />
        <h1>¡Bienvenido a BellaSoft!</h1>
        <div class="user-info">
            Sesión iniciada como: <b><%= usuario %></b>
        </div>
    </div>

    <div class="container">
        <i class="fas fa-sign-out-alt icon"></i>
        <form action="cerrar_sesion.jsp" method="post">
            <button type="submit">Cerrar Sesión</button>
        </form>
    </div>

</body>
</html>
