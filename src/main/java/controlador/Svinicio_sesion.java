package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/Svinicio_sesion")
public class Svinicio_sesion extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        
        System.out.println("Se recibió una petición de login: " + usuario);


        // Conexión a la base de datos
        String url = "jdbc:mysql://localhost:3306/bellasoft";
        String user = "root";
        String password = "Violet1622";

        try {
            // Cargar el driver de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer la conexión a la base de datos
            Connection con = DriverManager.getConnection(url, user, password);

            // Preparar la consulta para verificar el usuario y la clave
            PreparedStatement ps = con.prepareStatement("SELECT * FROM usuario WHERE usuario=? AND clave=?");
            ps.setString(1, usuario);
            ps.setString(2, clave);

            // Ejecutar la consulta
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Usuario autenticado
                // Crear una sesión para el usuario
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", usuario);

                // Redirigir al usuario a la página de bienvenida
                response.sendRedirect("welcome.jsp");
            } else {
                // Si el usuario o clave son incorrectos, redirigir con un mensaje de error
                response.sendRedirect("inicio_sesion.jsp?error=1");
            }

        } catch (Exception e) {
            e.printStackTrace();
            // En caso de error en la base de datos, redirigir con un mensaje de error
            response.sendRedirect("inicio_sesion.jsp?error=2");
        }
    }
}
