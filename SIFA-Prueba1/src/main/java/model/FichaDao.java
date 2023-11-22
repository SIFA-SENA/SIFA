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


//---------------------------- LISTAR FICHA POR ID -----------------------------------
public FichaVo listarId(int id){
    FichaVo fic=new FichaVo();
    String sql="select * from Ficha where idFicha="+id;
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery(sql);
        while (rs.next()) {
            fic.setProgramaFormacion(rs.getString(2));
            fic.setAreaFormacion(rs.getString(3));
            fic.setLugarFormacion(rs.getString(4));
            fic.setEstadoFicha(rs.getString(5));
        }
    } catch (Exception e) {

         System.out.println("Error en listar por id "+e.getMessage().toString());
        
    }
    return fic;
}
//----------------------- ACTUALIZAR FICHA ------------------------
public int actualizarFicha(FichaVo fic) throws SQLException{
    String sql="UPDATE Ficha SET programaFormacion=?,areaFormacion=?,lugarFormacion=?,estadoFicha=? WHERE idFicha=?";
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
    
    
        ps.setString(1, fic.getProgramaFormacion());
        ps.setString(2, fic.getAreaFormacion());
        ps.setString(3, fic.getLugarFormacion());
        ps.setString(4,fic.getEstadoFicha());
        ps.setInt(5,fic.getIdFicha());

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
// ------------ FILTRO  BUSCAR FICHA FICHAS ------------
public List<FichaVo> filtroFicha(String texto) throws SQLException{
    List<FichaVo> ficha=new ArrayList<>();
    sql="SELECT * from  ficha where idFicha like '%"+texto+"%' or programaFormacion like '%"+texto+"%'or areaFormacion like  '%"+texto+"%' or lugarFormacion like '%"+texto+"%' or estadoFicha like '%"+texto+"%'";
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