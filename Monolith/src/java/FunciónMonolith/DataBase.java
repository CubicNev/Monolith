package FunciónMonolith;

import java.sql.*;
import java.util.ArrayList;

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
    
    public void IngresarActividad(Actividad act) throws SQLException {
        String sql = "insert into actividad(Titulo,FormaDeEntregar,Descripcion,IDUsuario,FechaLimite,Estado) values (?,?,?,?,?,?);";
        ps = c.prepareStatement(sql);
        ps.setString(1, act.getTitulo());
        ps.setString(2, act.getFormadeEntregar());
        ps.setString(3, act.getDescripcion());
        ps.setInt(4,ConsultarUsuario(act.getUsuario()));
        ps.setDate(5,act.getFechaLimite());
        ps.setString(6,"No finalizada" );
        ps.execute();
        c.close();
    }
    
      public void CambiarActividad(Actividad act,String id) throws SQLException {
         int identic=Integer.parseInt(id);
        String sql = "update actividad set Titulo=?,FormaDeEntregar=?,Descripcion = ? where IDActividad="+identic+";";
        ps = c.prepareStatement(sql);
        ps.setString(1, act.getTitulo());
        ps.setString(2, act.getFormadeEntregar());
        ps.setString(3, act.getDescripcion());
        ps.execute();
        c.close();
    }
      
      public void EliminarActividad(String id) throws SQLException {
         int identic=Integer.parseInt(id);
        String sql = "delete from actividad where IDActividad="+identic+";";
        ps = c.prepareStatement(sql);
        ps.execute();
        c.close();
    }
    
    public int ConsultarUsuario(String usr) throws SQLException{
         int num=0;
        rs=st.executeQuery("select * from usuario where NombreUsuario='"+usr+"'");
         if(rs.next()){
              num=rs.getInt("IDUsuario");
         }
         return num;
    }
    
    public int ConsultarColaborador(String usr) throws SQLException{
         int num=0;
        rs=st.executeQuery("select * from colaboradoes inner join usuario on usuario.IDUsuario=colaboradoes.IDUsuario where usuario.NombreUsuario='"+usr+"'");
         if(rs.next()){
              num=rs.getInt("IDUsuario");
         }
         return num;
    }
    
    
}
