package persistencia;
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    public Connection getConexion(){
    String url="jdbc:derby://localhost:1527/SupermercadoGonzales";
    String user="gonzales";
    String pass="123";
        Connection cn;
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            cn = DriverManager.getConnection(url, user, pass);
        }catch(Exception e){
            cn=null;
        }
        return cn;
    }
}
