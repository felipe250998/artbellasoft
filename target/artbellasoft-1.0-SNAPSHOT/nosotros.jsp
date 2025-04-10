<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nosotros - BellaSoft</title>
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
            background-color: rgba(0, 0, 0, 0.6);
            z-index: -1;
        }

        .header {
            text-align: center;
            padding: 30px 10px 10px 10px;
        }

        .header img {
            height: 100px;
        }

        .header h1 {
            margin-top: 10px;
            font-size: 36px;
            color: #ffffff;
        }

        .content {
            max-width: 800px;
            margin: 40px auto;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 10px #000;
        }

        .content h2 {
            text-align: center;
            color: #00c7ff;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 18px;
            line-height: 1.6;
            text-align: justify;
        }

        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: #00c7ff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .back-button:hover {
            background-color: #00a0cc;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <button class="back-button" onclick="window.location.href='inicio.jsp'">⮐ Volver</button>

    <div class="header">
        <img src="imagenes/logo-bellasoft.jpg" alt="Logo BellaSoft">
        <h1>Sobre Nosotros</h1>
    </div>

    <div class="content">
        <h2>¿Quiénes somos?</h2>
        <p>
            En <strong>BellaSoft</strong>, somos una empresa comprometida con la innovación y el desarrollo tecnológico para brindar soluciones efectivas y personalizadas a nuestros clientes. 
            Nos especializamos en sistemas de gestión para comercios y puntos de venta, siempre enfocados en mejorar la experiencia del usuario, la eficiencia operativa y la facilidad de uso.
        </p>
        <p>
            Nuestro equipo está conformado por profesionales apasionados por la tecnología, que trabajan cada día con dedicación para mantener altos estándares de calidad, seguridad y diseño funcional.
        </p>
        <p>
            Gracias por confiar en nosotros. Seguimos creciendo contigo.
        </p>
    </div>

</body>
</html>
