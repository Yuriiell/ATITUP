import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    public Connection getConexion() throws ClassNotFoundException{
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto1?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");

            return conexion;
        }catch (SQLException e){
            System.out.println(e.toString());
            return null;
        }
    }
    
}
