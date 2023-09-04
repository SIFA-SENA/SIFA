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
    
public int registrarAprendiz(AprendizVo apr) throws SQLException{
    System.out.println("entro a registrar ficha");

    sql = "INSERT INTO Aprendiz (nombreAprendiz,tipodocAprendiz,documentoAprendiz,celularAprendiz,correoAprendiz,fechaNacimientoAprendiz,estadoAprendiz,idFichaFK) "
    + "VALUES ('" + apr.getNombreAprendiz() + "', '"
    + apr.getTipodocAprendiz() + "', "
    + apr.getDocumentoAprendiz() + "', "
    + apr.getCelularAprendiz() + "', "
    + apr.getCorreoAprendiz() + "', "
    + apr.getFechaNacimientoAprendiz() + "', "
    + apr.getEstadoAprendiz() + "', "
    + apr.getFichaVo().getIdFicha() + ") where idFichaFK=";
    try{
       
        System.out.println("Se registró la ficha correctamente");
    }catch(Exception e){
        System.out.println("Error en el registro "+e.getMessage().toString());
    }
    finally{
        con.close();//cerrando conexión
    }
    return r;
}


}
