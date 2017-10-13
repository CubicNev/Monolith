package FunciónMonolith;

import java.sql.*;

public class DataBase {

    String driver = "com.mysql.jdbc.Driver";
    String ruta = "jdbc:mysql://localhost/monolith";
    String usuario = "root";
    String clave = "n0m3l0";
    Connection c = null;
    Statement st = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public DataBase() throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        Class.forName(driver).newInstance();
        c = DriverManager.getConnection(ruta, usuario, clave);
        st = c.createStatement();
        
    }
    
    public void IngresarUsuario(Usuario usr) throws SQLException {
        String sql = "insert into Usuario(NombreUsuario,Institucion,NivelEstudio,Direccion,Correo, Edad, Pais, Contrasena) values (?,?,?,?,?,?,?,?);";
        ps = c.prepareStatement(sql);
        ps.setString(1, usr.getNombre());
        ps.setString(2, usr.getInstitucion());
        ps.setString(3, usr.getNivelEstudios());
        ps.setString(4, usr.getDireccion());
        ps.setString(5, usr.getCorreo());
        ps.setInt(6, usr.getEdad());
        ps.setString(7, usr.getPais());
        ps.setString(8, usr.getPassword());
        ps.execute();
        c.close();
    }
    
    public void ConsultarUsuario(Usuario usr){
    
    }
    
}
