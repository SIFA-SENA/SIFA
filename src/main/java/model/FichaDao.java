package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FichaDao {
Connection con; //objeto de conexión
PreparedStatement ps; //preparar sentencias
ResultSet rs; // almacenar consutas
String sql=null;
int r; //cantidad de filas que devuelve una sentencia
FichaVo fichaVo;

//----------------------------- REGISTRO FICHA -------------------------------------------
public int registrarFicha(FichaVo fic) throws SQLException{
    System.out.println("entro a registrar ficha");
    sql="INSERT INTO Ficha(idFicha,programaFormacion,areaFormacion,lugarFormacion,estadoFicha) values(?,?,?,?,?)";
    try{
        con=Conexion.conectar(); //abrir conexión
        ps=con.prepareStatement(sql); //preparar sentencia
        ps.setInt(1, fic.getIdFicha());
        ps.setString(2, fic.getProgramaFormacion());
        ps.setString(3, fic.getAreaFormacion());
        ps.setString(4, fic.getLugarFormacion());
        ps.setString(5,fic.getEstadoFicha());
        System.out.println(ps);
        ps.executeUpdate(); //Ejecutar sentencia
        ps.close(); //cerrar sentencia
        System.out.println("Se registró la ficha correctamente");
    }catch(Exception e){
        System.out.println("Error en el registro "+e.getMessage().toString());
    }
    finally{
        con.close();//cerrando conexión
    }
    return r;
}
//---------------------------- LISTAR FICHAS ----------------------------------------------------
public List<FichaVo> listarFicha() throws SQLException{
    List<FichaVo> ficha=new ArrayList<>();
    sql="SELECT * from Ficha";
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery(sql);
        while(rs.next()){
            FichaVo r= new FichaVo();
            //Escribir  en el setter cada valor encontrado
            r.setIdFicha(rs.getInt("idFicha"));
            r.setProgramaFormacion(rs.getString("programaFormacion"));
            r.setAreaFormacion(rs.getString("areaFormacion"));
            r.setLugarFormacion(rs.getString("lugarFormacion"));
            r.setEstadoFicha(rs.getString("estadoFicha"));
            ficha.add(r);
        }
        ps.close();
        System.out.println("consulta exitosa");
    } catch (Exception e) {
        System.out.println("La consulta no pudo ser ejecutado "+e.getMessage().toString());
    }
    finally{
        
        con.close();
    }
    return ficha;
}

//actualizar fichas

public void actualizarFichas(FichaVo fic) throws Exception {
    String sql = "UPDATE ficha SET programaFormacion = '"
            + fic.getProgramaFormacion() + "', areaFormacion = '"
            + fic.getAreaFormacion() + "', lugarFormacion = "
            +fic.getLugarFormacion()+"',estadoFicha="
            +fic.getEstadoFicha()
            + " WHERE idFicha = " + fic.getIdFicha();
    try {
         con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery(sql); 
        
    } catch (Exception e) {
        System.out.println("Error en la actualizacion "+e.getMessage().toString());
    } finally{
        con.close();//cerrando conexión
    }
} 
/* public int actualizarFicha(FichaVo fic) throws SQLException{
    sql="UPDATE Ficha SET programaFormacion=?,areaFormacion=? lugarFormacion=?,esradoFormacion=?;";
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery(sql);  
        
        ps.setString(1, fic.getProgramaFormacion());
        ps.setString(2, fic.getAreaFormacion());
        ps.setString(3, fic.getLugarFormacion());
        ps.setBoolean(4,fic.getEstadoFicha());
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
} */
//activar o inactivar ficha
//---------------- ACTIVAR E INACTIVAR USUARIOS ---------------------

 public void estadoF(FichaVo ficha) throws SQLException{
    String sql = "UPDATE ficha SET estadoFicha = "
                + ficha.getEstadoFicha()
                + " WHERE idFicha = " + ficha.getIdFicha();
    try{
        con=Conexion.conectar(); //abrir conexión
        ps=con.prepareStatement(sql); //preparar sentencia
         System.out.println(ps);
        ps.executeUpdate(); //Ejecutar sentencia
        ps.close(); //cerrar sentencia
        System.out.println("Se cambio el estado correctamente el usuario correctamente");
    }catch(Exception e){
        System.out.println("Error en el registro "+e.getMessage().toString());
    }
    finally{
        con.close();//cerrando conexión
    }

}

//-------------------- LISTAR FICHA
public List<FichaVo> listarFicha1() throws SQLException{
    List<FichaVo> ficha=new ArrayList<>();
    sql="SELECT f.idFicha,f.programaFormacion,f.areaFormacion,f.lugarFormacion,estadoFicha from Ficha";
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery(sql);
        while(rs.next()){
            FichaVo r= new FichaVo();
            //Escribir  en el setter cada valor encontrado
            r.setIdFicha(rs.getInt("idFicha"));
            r.setProgramaFormacion(rs.getString("programaFormacion"));
            r.setAreaFormacion(rs.getString("areaFormacion"));
            r.setLugarFormacion(rs.getString("lugarFormacion"));
            r.setEstadoFicha(rs.getString("estadoFicha"));
            ficha.add(r);
        }
        ps.close();
        System.out.println("consulta exitosa");
    } catch (Exception e) {
        System.out.println("La consulta no pudo ser ejecutado "+e.getMessage().toString());
    }
    finally{
        
        con.close();
    }
    return ficha;
}
}