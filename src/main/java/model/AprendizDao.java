package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AprendizDao {
Connection con; //objeto de conexión
PreparedStatement ps; //preparar sentencias
ResultSet rs; // almacenar consutas
String sql=null;
int r; //cantidad de filas que devuelve una sentencia
AprendizVo aprendizVo;
FichaVo FichaVo;

//------------------------------- REGISTRAR APRENDIZ -------------------------------------
public int registrarAprendiz(AprendizVo apr, FichaVo fic) throws SQLException{
    System.out.println("entro a registrar ficha");
    sql="INSERT INTO Aprendiz(nombreAprendiz,tipodocAprendiz,documentoAprendiz,celularAprendiz,correoAprendiz,fechaNacimientoAprendiz,estadoAprendiz,observaciones,idFichaFK) values(?,?,?,?,?,?,?,?,?)";
    try{
        con=Conexion.conectar(); //abrir conexión
        ps=con.prepareStatement(sql); //preparar sentencia
        ps.setString(1, apr.getNombreAprendiz());
        ps.setString(2, apr.getTipodocAprendiz());
        ps.setInt(3, apr.getDocumentoAprendiz());
        ps.setInt(4, apr.getCelularAprendiz());
        ps.setString(5,apr.getCorreoAprendiz());
        ps.setString(6,apr.getFechaNacimientoAprendiz());
        ps.setString(7,apr.getEstadoAprendiz());
        ps.setString(8,apr.getObservaciones());
        ps.setInt(9,fic.getIdFicha());
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
//---------------------------------------- LISTAR APRENDIZ -------------------------------------------
public List<AprendizVo> listarAprendiz() throws SQLException{
    List<AprendizVo> aprendiz=new ArrayList<>();
    sql="SELECT A.idAprendiz,A.nombreAprendiz,A.tipodocAprendiz,A.documentoAprendiz,A.celularAprendiz,A.correoAprendiz,A.fechaNacimientoAprendiz,A.estadoAprendiz,A.observaciones,F.idFicha from Aprendiz A INNER JOIN Ficha F On F.idFicha=A.idFichaFK";
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery(sql);
        while(rs.next()){
            AprendizVo r= new AprendizVo();
            
            //Escribir  en el setter cada valor encontrado
            r.setIdAprendiz(rs.getInt("idAprendiz"));
            r.setNombreAprendiz(rs.getString("nombreAprendiz"));
            r.setTipodocAprendiz(rs.getString("tipodocAprendiz"));
            r.setDocumentoAprendiz(rs.getInt("documentoAprendiz"));
            r.setCelularAprendiz(rs.getInt("celularAprendiz"));
            r.setCorreoAprendiz(rs.getString("correoAprendiz"));
            r.setFechaNacimientoAprendiz(rs.getString("fechaNacimientoAprendiz"));
            r.setEstadoAprendiz(rs.getString("estadoAprendiz"));
            r.setObservaciones(rs.getString("observaciones"));
            r.setFichaVo(new FichaVo());
            r.getFichaVo().setIdFicha(rs.getInt("idFicha"));
        
            aprendiz.add(r);
     
        }
        ps.close();
        System.out.println("consulta exitosa");
    } catch (Exception e) {
        System.out.println("La consulta no pudo ser ejecutado "+e.getMessage().toString());
    }
    finally{
        
        con.close();
    }
    return aprendiz;
}

//---------------------------- LISTAR APRENDIZ POR ID -----------------------------------
public AprendizVo listarIdApr(int id){
    AprendizVo apr=new AprendizVo();
    FichaVo fic=new FichaVo();
    String sql="select * from Aprendiz where idAprendiz="+id;
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery(sql);
        while (rs.next()) {
            apr.setNombreAprendiz(rs.getString(2));
            apr.setTipodocAprendiz(rs.getString(3));
            apr.setDocumentoAprendiz(rs.getInt(4));
            apr.setCelularAprendiz(rs.getInt(5));
            apr.setCorreoAprendiz(rs.getString(6));
            apr.setFechaNacimientoAprendiz(rs.getString(7));
            apr.setEstadoAprendiz(rs.getString(8));
            apr.setObservaciones(rs.getString(9));
            fic.setIdFicha(rs.getInt(10));
            
        }
    } catch (Exception e) {

         System.out.println("Error en listar por id "+e.getMessage().toString());
        
    }
    return apr;
}
//----------------------- ACTUALIZAR APRENDIZ ------------------------
public int actualizarAprendiz(AprendizVo apr,FichaVo fic) throws SQLException{
    String sql="UPDATE Aprendiz SET nombreAprendiz=?,tipodocAprendiz=?,documentoAprendiz=?,celularAprendiz=?,correoAprendiz=?,fechaNacimientoAprendiz=?,estadoAprendiz=?,observaciones=?,idFichaFK=? WHERE idAprendiz=?";
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
    
    
        ps.setString(1, apr.getNombreAprendiz());
        ps.setString(2, apr.getTipodocAprendiz());
        ps.setInt(3, apr.getDocumentoAprendiz());
        ps.setInt(4,apr.getCelularAprendiz());
        ps.setString(5,apr.getCorreoAprendiz());
        ps.setString(6,apr.getFechaNacimientoAprendiz());
        ps.setString(7,apr.getEstadoAprendiz());
        ps.setString(8,apr.getObservaciones());
        ps.setInt(9,fic.getIdFicha());
        ps.setInt(10,apr.getIdAprendiz());

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

}
