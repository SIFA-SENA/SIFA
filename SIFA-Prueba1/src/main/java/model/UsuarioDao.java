package model;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;



    
public class UsuarioDao {
    /* Atributos para realizar operaciones sobre la BD */
    Connection con; 
    PreparedStatement ps; 
    ResultSet rs; 
    String sql=null;
    int r; 
    UsuarioVo usuarioVo;
    /*----------------------------------------SECCION DE REGISTRAR USUARIO INSTRUCTOR --------------------------------------*/ 

    public int registrar(UsuarioVo usu) throws SQLException{
     
        sql="INSERT INTO Usuario(nombreUsuario,tipodocUsuario,documentoUsuario,celularUsuario,rol,usuario,correo,clave) values(?,?,?,?,?,?,?,?)";
        try{
            usu.setRol("Instructor");
            con=Conexion.conectar(); //abrir conexión
            ps=con.prepareStatement(sql); //preparar sentencia
            ps.setString(1, usu.getNombreUsuario());
            ps.setString(2, usu.getTipodocUsuario());
            ps.setInt(3, usu.getDocumentoUsuario());
            ps.setInt(4, usu.getCelularUsuario());
            ps.setString(5, usu.getRol());
             ps.setString(6, usu.getUsuario());
            ps.setString(7, usu.getCorreo());
            ps.setString(8, usu.getClave());
            System.out.println(ps);
            ps.executeUpdate(); //Ejecutar sentencia
            ps.close(); //cerrar sentencia
            System.out.println("Se registró el rol correctamente");
        }catch(Exception e){
            System.out.println("Error en el registro "+e.getMessage().toString());
        }
        finally{
            con.close();//cerrando conexión
        }
        return r;
    }
/*----------------------------------------SECCION DE REGISTRAR USUARIO--------------------------------------*/ 

    public int registrarA(UsuarioVo usu) throws SQLException{
        sql="INSERT INTO Usuario(nombreUsuario,tipodocUsuario,documentoUsuario,celularUsuario,rol,usuario,correo,clave) values(?,?,?,?,?,?,?,?)";
        try{
            con=Conexion.conectar(); //abrir conexión
            ps=con.prepareStatement(sql); //preparar sentencia
            ps.setString(1, usu.getNombreUsuario());
            ps.setString(2, usu.getTipodocUsuario());
            ps.setInt(3, usu.getDocumentoUsuario());
            ps.setInt(4, usu.getCelularUsuario());
            ps.setString(5, usu.getRol());
             ps.setString(6, usu.getUsuario());
            ps.setString(7, usu.getCorreo());
            ps.setString(8, usu.getClave());
            System.out.println(ps);
            ps.executeUpdate(); //Ejecutar sentencia
            ps.close(); //cerrar sentencia
            System.out.println("Se registró el rol correctamente");
        }catch(Exception e){
            System.out.println("Error en el registro "+e.getMessage().toString());
        }
        finally{
            con.close();//cerrando conexión
        }
        return r;
    }

/*------------------------SECCION DE CONSULTAR USUARIO------------------------------------------------*/

    public List<UsuarioVo> listar() throws SQLException{
        List<UsuarioVo> usuario=new ArrayList<>();
        sql="SELECT * from  usuario";
        try {
            con=Conexion.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery(sql);
            while(rs.next()){
                UsuarioVo r=new UsuarioVo();
                //Escribir  en el setter cada valor encontrado
                r.setIdUsuario(rs.getInt("idUsuario"));
                r.setNombreUsuario(rs.getString("nombreUsuario"));
                r.setTipodocUsuario(rs.getString("tipodocUsuario"));
                r.setDocumentoUsuario(rs.getInt("documentoUsuario"));
                r.setCelularUsuario(rs.getInt("celularUsuario"));
                r.setRol(rs.getString("rol"));
                 r.setUsuario(rs.getString("usuario"));
                r.setCorreo(rs.getString("correo"));
                r.setClave(rs.getString("clave"));
                usuario.add(r); 
                
            } 
            ps.close();
            System.out.println("consulta exitosa");
        } catch (Exception e) {
            System.out.println("La consulta no pudo ser ejecutado "+e.getMessage().toString());
        }
        finally{
            con.close();
        }

        return usuario;
    }

     //----------------------------------------- INICIAR SESION  -----------------------

     public int validar(UsuarioVo usu) throws SQLException{
        int r = 0;
        sql="select * from Usuario where usuario=? and clave=? ";
            try {
            con=Conexion.conectar();//ABRIR CONEXION
            ps=con.prepareStatement(sql);//PREAPARAR SENTENCIA
            ps.setString(1,usu.getUsuario());
            ps.setString(2,usu.getClave());
          
            
            System.out.println(ps);
            rs = ps.executeQuery();
            while(rs.next()) {
                    r = r + 1;
                    usu.setUsuario(rs.getString("usuario"));
                    usu.setClave(rs.getString("clave"));
                    usu.setRol(rs.getString("rol"));
                }
                if (r==1) {
                    return 1;
                } else {
                    return 0;
                }
        }catch(Exception e){
            System.out.println("Error en el consultar "+e.getMessage().toString());
        }
        finally{
            con.close();//cerrando conexión
        }
        return r;
        
    }

//---------------------------- LISTAR USUARIO  POR ID -----------------------------------
public UsuarioVo listarIdUsu(int id){
    UsuarioVo usu=new UsuarioVo();
    String sql="select * from Usuario where idUsuario="+id;
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery(sql);
        while (rs.next()) {
            usu.setNombreUsuario(rs.getString(2));
            usu.setTipodocUsuario(rs.getString(3));
            usu.setDocumentoUsuario(rs.getInt(4));
            usu.setCelularUsuario(rs.getInt(5));
            usu.setRol(rs.getString(6));
            usu.setUsuario(rs.getString(7));
            usu.setCorreo(rs.getString(8));
            usu.setClave(rs.getString(9));
            
        }
    } catch (Exception e) {

         System.out.println("Error en listar por id "+e.getMessage().toString());
        
    }
    return usu;
}
//----------------------- ACTUALIZAR USUARIO ------------------------
public int actualizarUsuario(UsuarioVo usu) throws SQLException{
    String sql="UPDATE Usuario SET nombreUsuario=?,tipodocUsuario=?,documentoUsuario=?,celularUsuario=?,rol=?,usuario=?,correo=?,clave=? WHERE idUsuario=?";
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
    
    
        ps.setString(1, usu.getNombreUsuario());
        ps.setString(2, usu.getTipodocUsuario());
        ps.setInt(3, usu.getDocumentoUsuario());
        ps.setInt(4,usu.getCelularUsuario());
        ps.setString(5,usu.getRol());
        ps.setString(6,usu.getUsuario());
        ps.setString(7,usu.getCorreo());
        ps.setString(8,usu.getClave());
        ps.setInt(9,usu.getIdUsuario());

        System.out.println(ps);
        ps.executeUpdate(); //Ejecutar sentencia
        ps.close(); //cerrar sentencia
        System.out.println("EDITASTE CORRECTAMENTE");
    }catch(Exception e){
        System.out.println("Error en el registro "+e.getMessage().toString());
    }
    finally{
        con.close();//cerrando conexión
    }
    return r;
}
//---------------------------- FILTRO DE BUSQUEDA USUARIOS -----------------

    public List<UsuarioVo> filtroUsua(String texto) throws SQLException{
        List<UsuarioVo> usuario=new ArrayList<>();
        sql="SELECT * from  usuario where idUsuario like '%"+texto+"%' or nombreUsuario like '%"+texto+"%' or tipodocUsuario like '%"+texto+"%' or documentoUsuario like '%"+texto+"%' or celularUsuario like '%"+texto+"%' or rol like '%"+texto+"%' or usuario like '%"+texto+"%' or correo like '%"+texto+"%'";
        try {
            con=Conexion.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery(sql);
            while(rs.next()){
                UsuarioVo r=new UsuarioVo();
                //Escribir  en el setter cada valor encontrado
                r.setIdUsuario(rs.getInt("idUsuario"));
                r.setNombreUsuario(rs.getString("nombreUsuario"));
                r.setTipodocUsuario(rs.getString("tipodocUsuario"));
                r.setDocumentoUsuario(rs.getInt("documentoUsuario"));
                r.setCelularUsuario(rs.getInt("celularUsuario"));
                r.setRol(rs.getString("rol"));
                 r.setUsuario(rs.getString("usuario"));
                r.setCorreo(rs.getString("correo"));
                r.setClave(rs.getString("clave"));
                usuario.add(r); 
                
            } 
            ps.close();
            System.out.println("consulta exitosa");
        } catch (Exception e) {
            System.out.println("La consulta no pudo ser ejecutado "+e.getMessage().toString());
        }
        finally{
            con.close();
        }

        return usuario;
    }

   /*  public static void cargarExcel() throws FileNotFoundException,IOException{
        FileInputStream archivo = new FileInputStream("C:\\Users\\User\\Downloads\\Aprendiz.xlsx");
        XSSFWorkbook libro = new XSSFWorkbook(archivo);
        XSSFSheet hoja = libro.getSheetAt(0);

        int numero_Filas = hoja.getLastRowNum();
         for (int i=0 ; i<=numero_Filas ; i++){
            Row fila = hoja.getRow(i);
             con=Conexion.conectar();
        
    } */
    

}