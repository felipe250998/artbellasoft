<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto - BellaSoft</title>
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

        .header {
            text-align: center;
            padding: 30px 10px 10px 10px;
        }

        .header img {
            height: 100px;
        }

        .header h1 {
            margin-top: 10px;
            font-size: 32px;
            color: #ffffff;
        }

        .contact-container {
            background-color: rgba(0, 0, 0, 0.7);
            max-width: 600px;
            margin: 40px auto;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 10px #000;
        }

        .contact-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #00c7ff;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: white;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group textarea {
            resize: vertical;
            height: 100px;
        }

        .form-group button {
            background-color: #00c7ff;
            color: white;
            font-weight: bold;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .form-group button:hover {
            background-color: #00a0cc;
            transform: translateY(-3px);
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
        <h1>Contacto</h1>
    </div>

    <div class="contact-container">
        <h2>Escríbenos</h2>
        <form action="#" method="post">
            <div class="form-group">
                <label for="nombre">Nombre completo</label>
                <input type="text" id="nombre" name="nombre" placeholder="Tu nombre..." required>
            </div>
            <div class="form-group">
                <label for="correo">Correo electrónico</label>
                <input type="email" id="correo" name="correo" placeholder="Tu correo..." required>
            </div>
            <div class="form-group">
                <label for="asunto">Asunto</label>
                <input type="text" id="asunto" name="asunto" placeholder="Motivo de contacto..." required>
            </div>
            <div class="form-group">
                <label for="mensaje">Mensaje</label>
                <textarea id="mensaje" name="mensaje" placeholder="Escribe tu mensaje aquí..." required></textarea>
            </div>
            <div class="form-group">
                <button type="submit">Enviar Mensaje</button>
            </div>
        </form>
    </div>

</body>
</html>
