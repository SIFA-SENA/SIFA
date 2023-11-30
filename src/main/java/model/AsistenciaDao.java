package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controller.Aprendiz;
import controller.Ficha;

public class AsistenciaDao {
Connection con; //objeto de conexión
PreparedStatement ps; //preparar sentencias
ResultSet rs; // almacenar consutas
String sql=null;
int r; //cantidad de filas que devuelve una sentencia
AsistenciaVo asistenciaVo;


public void guardarAsistencia(AsistenciaVo asistencia) throws SQLException {
 
        // Consulta SQL para insertar una nueva fila en la tabla 'asistencias'
        String sql = "INSERT INTO asistencia (asistencia, fecha, competencia) VALUES (?, ?, ?)";
        con=Conexion.conectar(); //abrir conexión
        ps=con.prepareStatement(sql);
        try {
            // Establecer los valores de los parámetros en la consulta
            ps.setString(1, asistencia.getAsistencia());
            ps.setString (2,asistencia.getFecha());
            ps.setString(3, asistencia.getCompetencia());
            // Otros campos existentes

            // Ejecutar la consulta
            ps.executeUpdate();
            ps.close(); 
      
    } catch (Exception e) {
        e.printStackTrace(); 
    }finally{
        con.close();
    }
      
    
}

// consultar lista 
public List<AsistenciaVo> consultarLista() throws SQLException{
    List<AsistenciaVo> asistencia=new ArrayList<>();
    sql=" SELECT A.idAprendiz,A.nombreAprendiz,A.tipodocAprendiz,A.documentoAprendiz,A.celularAprendiz,A.correoAprendiz,A.fechaNacimientoAprendiz,A.estadoAprendiz,A.observaciones,F.idFicha, ASI.asistencia,ASI.fecha,ASI.competencia from Aprendiz A INNER JOIN Ficha F On F.idFicha=A.idFichaFK INNER JOIN Asistencia ASI   On A.idAprendiz=ASI.idAprendizFK";
    try {
        con=Conexion.conectar();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery(sql);
        while(rs.next()){
            AsistenciaVo r= new AsistenciaVo();
            
            //Escribir  en el setter cada valor encontrado
            r.getAprendizVo().setIdAprendiz(rs.getInt("idAprendiz"));
            r.getAprendizVo().setNombreAprendiz(rs.getString("nombreAprendiz"));
            r.getAprendizVo().setTipodocAprendiz(rs.getString("tipodocAprendiz"));
            r.getAprendizVo().setDocumentoAprendiz(rs.getInt("documentoAprendiz"));
            r.getAprendizVo().setCelularAprendiz(rs.getInt("celularAprendiz"));
            r.getAprendizVo().setCorreoAprendiz(rs.getString("correoAprendiz"));
            r.getAprendizVo().setFechaNacimientoAprendiz(rs.getString("fechaNacimientoAprendiz"));
            r.getAprendizVo().setEstadoAprendiz(rs.getString("estadoAprendiz"));
            r.getAprendizVo().setObservaciones(rs.getString("observaciones"));
            r.getAprendizVo().setFichaVo(new FichaVo());
            r.getAprendizVo().getFichaVo().setIdFicha(rs.getInt("idFicha"));
            r.setAsistencia(rs.getString("asistencia"));
            r.setFecha(rs.getString("fecha"));
            r.setCompetencia(rs.getString("competencia"));

        
            asistencia.add(r);
     
        }
        ps.close();
        System.out.println("consulta exitosa");
    } catch (Exception e) {
        System.out.println("La consulta no pudo ser ejecutado "+e.getMessage().toString());
    }
    finally{
        
        con.close();
    }
    return asistencia;
}

}