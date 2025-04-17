package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {
    Connection con;

    public conexion() {
        String url = "jdbc:mysql://localhost:3306/bellasoft";
        String user = "root";
        String password = "Violet1622";

        try {
    Class.forName("com.mysql.cj.jdbc.Driver"); // Asegura que se cargue el driver
    con = DriverManager.getConnection(url, user, password);
    System.out.println("✅ Conexión exitosa a la base de datos");
} catch (ClassNotFoundException | SQLException e) {
    System.out.println("❌ Error en la conexión: " + e.getMessage());
    e.printStackTrace();
}

    }

    public Connection obtenerConexion() {
        return con;
    }

    public Connection getConnection() {
        return con;
    }
}

