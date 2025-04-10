<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servicios - BellaSoft</title>
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
            background-color: rgba(0,0,0,0.5);
            z-index: -1;
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

        #header {
            width: 100%;
            padding: 30px 20px;
            background-color: rgba(15, 64, 245, 1);
            text-align: center;
        }

        #header img {
            height: 90px;
            margin-bottom: 10px;
        }

        #header h1 {
            margin: 0;
            font-size: 32px;
            font-weight: bold;
        }

        .contenido {
            text-align: center;
            padding: 40px 20px;
        }

        .contenido h2 {
            font-size: 28px;
            margin-bottom: 30px;
        }

        .servicios-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .servicio-card {
            background-color: rgba(255, 255, 255, 0.2); /* Fondo más claro para destacar */
            color: #fff;
            border-radius: 15px;
            padding: 25px;
            width: 240px;
            transition: transform 0.3s ease, background-color 0.3s ease;
            box-shadow: 0 4px 10px rgba(0,0,0,0.4);
        }

        .servicio-card:hover {
            transform: translateY(-10px);
            background-color: rgba(0, 199, 255, 0.8); /* Cambio al pasar el mouse */
        }

        .servicio-card i {
            font-size: 40px;
            margin-bottom: 15px;
            color: #00e6ff;
        }

        .servicio-card h3 {
            margin: 0;
            font-size: 20px;
        }

        @media (max-width: 768px) {
            .servicios-grid {
                flex-direction: column;
                align-items: center;
            }

            .servicio-card {
                width: 90%;
            }

            #header h1 {
                font-size: 24px;
            }
        }
    </style>
</head>

<body>
    <a href="inicio.jsp" class="btn-volver">← Volver al inicio</a>

    <div id="header">
        <img src="imagenes/logo-bellasoft.jpg" alt="Logo">
        <h1>Servicios BellaSoft</h1>
    </div>

    <div class="contenido">
        <h2>¿Qué ofrecemos?</h2>

        <div class="servicios-grid">
            <div class="servicio-card">
                <i class="fas fa-truck"></i>
                <h3>Envíos a domicilio</h3>
            </div>
            <div class="servicio-card">
                <i class="fas fa-cogs"></i>
                <h3>Mantenimiento de productos</h3>
            </div>
            <div class="servicio-card">
                <i class="fas fa-users"></i>
                <h3>Atención personalizada</h3>
            </div>
            <div class="servicio-card">
                <i class="fas fa-shield-alt"></i>
                <h3>Garantía y soporte</h3>
            </div>
        </div>
    </div>
</body>

</html>
