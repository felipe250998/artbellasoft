<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos BellaSoft</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('imagenes/fondo-supermercado.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
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

        #container1 {
            background-color: rgba(15, 64, 245, 0.9);
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            gap: 20px;
        }

        #container1 img {
            height: 60px;
        }

        .titulo-principal {
            margin: 0 auto;
            font-size: 36px;
            font-weight: bold;
            text-align: center;
            flex: 1;
            color: white;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.8);
            animation: fadeIn 1.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .search-container {
            text-align: center;
            margin: 30px 0;
        }

        input[type="text"] {
            padding: 10px;
            border-radius: 5px;
            border: none;
            width: 250px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .productos-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            padding: 20px;
        }

        .productos-container button {
            background-color: rgba(0, 199, 255, 1);
            color: white;
            font-weight: bold;
            border: none;
            padding: 15px 25px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .productos-container button:hover {
            background-color: #03fa03;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <div id="container1">
        <h1 class="titulo-principal">Productos BellaSoft</h1>
        <img src="imagenes/logo-bellasoft.jpg" alt="Logo BellaSoft" />
    </div>

    <div class="search-container">
        <form action="#" method="GET">
            <input type="text" name="search" placeholder="Buscar producto...">
            <input type="submit" value="Buscar">
        </form>
    </div>

    <div class="productos-container">
        <button>Granos</button>
        <button>Lácteos</button>
        <button>Verduras</button>
        <button>Frutas</button>
        <button>Carnes</button>
        <button>Pescados</button>
        <button>Enlatados</button>
        <button>Congelados</button>
        <button>Bebidas</button>
        <button>Limpieza</button>
        <button>Snacks</button>
        <button>Otros</button>
    </div>
    <div style="text-align: center; margin-bottom: 30px;">
    <form action="inicio.jsp" method="get">
        <button type="submit" style="
            background-color: #ff5722;
            color: white;
            font-weight: bold;
            border: none;
            padding: 12px 25px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        ">
            <i class="fas fa-arrow-left" style="margin-right: 8px;"></i>Volver al Inicio
        </button>
    </form>
</div>
</body>
</html>
