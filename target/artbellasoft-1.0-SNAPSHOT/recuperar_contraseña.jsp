<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Recuperar Contraseña - BellaSoft</title>
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

        .recovery-container {
            background-color: rgba(15, 64, 245, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
            text-align: center;
            width: 90%;
            max-width: 400px;
        }

        h2 {
            margin-bottom: 20px;
        }

        input[type="email"] {
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
    <div class="recovery-container">
        <h2>¿Olvidaste tu contraseña?</h2>
        <p>Ingresa tu correo electrónico para restablecerla.</p>
        <form action="RecuperarClaveServlet" method="post">
            <input type="email" name="correo" placeholder="Correo electrónico" required>
            <button type="submit">Enviar enlace de recuperación</button>
        </form>
    </div>

    <a href="inicio_sesion.jsp" class="btn-volver">← Volver al inicio de sesión</a>
</body>
</html>
