<%-- 
    Document   : inicio
    Created on : 18/07/2024
    Author     : Wbeimar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio BellaSoft</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('imagenes/fondo-supermercado.jpg') no-repeat center center fixed;
            background-size: cover;
            position: relative;
            color: white;
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

        .background-overlay {
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
        }

        #container1 img {
            height: 80px;
            margin-left: 20px;
            animation: pulse 2s infinite;
        }

        #container1 h1 {
            color: white;
            font-weight: bold;
            font-size: 20px;
            text-align: center;
            width: 100%;
        }

        .spacer {
            height: 20px;
        }

        .container {
            width: 50%;
            height: 75px;
            background-color: rgba(15, 64, 245, 1);
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            opacity: 0;
            animation: slideInUp 0.8s ease forwards;
        }

        .container:nth-of-type(2) { animation-delay: 0.2s; }
        .container:nth-of-type(4) { animation-delay: 0.4s; }
        .container:nth-of-type(6) { animation-delay: 0.6s; }
        .container:nth-of-type(8) { animation-delay: 0.8s; }
        .container:nth-of-type(10) { animation-delay: 1s; }
        .container:nth-of-type(12) { animation-delay: 1.2s; }

        .container button {
            background-color: rgba(0, 199, 255, 1);
            color: white;
            font-weight: bold;
            border: none;
            width: 300px;
            height: 50px;
            margin: 0 10px;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .container .icon {
            font-size: 50px;
            margin-right: 10px;
            color: black;
        }

        .container button:hover {
            background-color: rgba(0, 199, 255, 0.8);
            transform: scale(1.05);
            box-shadow: 0 0 10px rgba(0, 199, 255, 0.6);
        }

        /* Animaciones */
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

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                flex-direction: column;
                height: auto;
                padding: 10px;
            }

            .container button {
                width: 100%;
                margin-top: 10px;
            }

            .icon {
                font-size: 40px;
                margin-bottom: 10px;
            }
        }
    </style>

    <script>
        function navegar(pagina) {
            window.location.href = pagina + ".jsp";
        }
    </script>
</head>

<body>
    <div class="background-overlay"></div>

    <div class="container" id="container1">
        <img src="imagenes/logo-bellasoft.jpg" alt="Logo BellaSoft" />
        <h1>Inicio-BellaSoft</h1>
    </div>

    <div class="spacer"></div>
    <div class="container">
        <i class="fa fa-home fa-lg icon" aria-hidden="true"></i>
        <button type="button" onclick="navegar('inicio_sesion')">Inicio</button>
    </div>

    <div class="spacer"></div>
    <div class="container">
        <i class="fa fa-gift fa-lg icon" aria-hidden="true"></i>
        <button type="button" onclick="navegar('productos')">Productos</button>
    </div>

    <div class="spacer"></div>
    <div class="container">
        <i class="fa fa-wrench fa-lg icon" aria-hidden="true"></i>
        <button type="button" onclick="navegar('servicios')">Servicios</button>
    </div>

    <div class="spacer"></div>
    <div class="container">
        <i class="fa fa-phone fa-lg icon" aria-hidden="true"></i>
        <button type="button" onclick="navegar('contacto')">Contacto</button>
    </div>

    <div class="spacer"></div>
    <div class="container">
        <i class="fa fa-user-plus fa-lg icon" aria-hidden="true"></i>
        <button type="button" onclick="navegar('nosotros')">Nosotros</button>
    </div>

</body>

</html>
