package model;
import java.sql.Date;
import model.FichaVo;

public class AprendizVo {
    private int idAprendiz;
    private String nombreAprendiz;
    private String tipodocAprendiz;
    private int documentoAprendiz;
    private int celularAprendiz;
    private String correoAprendiz;
    private String fechaNacimientoAprendiz;
    private String estadoAprendiz;
    private String observaciones;
    private FichaVo FichaVo;



    public AprendizVo() {
        
    }



    public AprendizVo(int idAprendiz, String nombreAprendiz, String tipodocAprendiz, int documentoAprendiz,
            int celularAprendiz, String correoAprendiz, String fechaNacimientoAprendiz, String estadoAprendiz,
            String observaciones, model.FichaVo fichaVo) {
        this.idAprendiz = idAprendiz;
        this.nombreAprendiz = nombreAprendiz;
        this.tipodocAprendiz = tipodocAprendiz;
        this.documentoAprendiz = documentoAprendiz;
        this.celularAprendiz = celularAprendiz;
        this.correoAprendiz = correoAprendiz;
        this.fechaNacimientoAprendiz = fechaNacimientoAprendiz;
        this.estadoAprendiz = estadoAprendiz;
        this.observaciones = observaciones;
        FichaVo = fichaVo;
    }



    public int getIdAprendiz() {
        return idAprendiz;
    }



    public void setIdAprendiz(int idAprendiz) {
        this.idAprendiz = idAprendiz;
    }



    public String getNombreAprendiz() {
        return nombreAprendiz;
    }



    public void setNombreAprendiz(String nombreAprendiz) {
        this.nombreAprendiz = nombreAprendiz;
    }



    public String getTipodocAprendiz() {
        return tipodocAprendiz;
    }



    public void setTipodocAprendiz(String tipodocAprendiz) {
        this.tipodocAprendiz = tipodocAprendiz;
    }



    public int getDocumentoAprendiz() {
        return documentoAprendiz;
    }



    public void setDocumentoAprendiz(int documentoAprendiz) {
        this.documentoAprendiz = documentoAprendiz;
    }



    public int getCelularAprendiz() {
        return celularAprendiz;
    }



    public void setCelularAprendiz(int celularAprendiz) {
        this.celularAprendiz = celularAprendiz;
    }



    public String getCorreoAprendiz() {
        return correoAprendiz;
    }



    public void setCorreoAprendiz(String correoAprendiz) {
        this.correoAprendiz = correoAprendiz;
    }



    public String getFechaNacimientoAprendiz() {
        return fechaNacimientoAprendiz;
    }



    public void setFechaNacimientoAprendiz(String fechaNacimientoAprendiz) {
        this.fechaNacimientoAprendiz = fechaNacimientoAprendiz;
    }



    public String getEstadoAprendiz() {
        return estadoAprendiz;
    }



    public void setEstadoAprendiz(String estadoAprendiz) {
        this.estadoAprendiz = estadoAprendiz;
    }



    public String getObservaciones() {
        return observaciones;
    }



    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }



    public FichaVo getFichaVo() {
        return FichaVo;
    }



    public void setFichaVo(FichaVo fichaVo) {
        FichaVo = fichaVo;
    }


    


    
}



    