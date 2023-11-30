package model;

public class AsistenciaVo {
    private int idAsistencia;
    private String asistencia;
    private String fecha;
    private String competencia;
    private AprendizVo AprendizVo;


    public AsistenciaVo() {

    }


    public AsistenciaVo(int idAsistencia, String asistencia, String fecha, String competencia,
            model.AprendizVo aprendizVo) {
        this.idAsistencia = idAsistencia;
        this.asistencia = asistencia;
        this.fecha = fecha;
        this.competencia = competencia;
        AprendizVo = aprendizVo;
    }


    public int getIdAsistencia() {
        return idAsistencia;
    }


    public void setIdAsistencia(int idAsistencia) {
        this.idAsistencia = idAsistencia;
    }


    public String getAsistencia() {
        return asistencia;
    }


    public void setAsistencia(String asistencia) {
        this.asistencia = asistencia;
    }


    public String getFecha() {
        return fecha;
    }


    public void setFecha(String fecha) {
        this.fecha = fecha;
    }


    public String getCompetencia() {
        return competencia;
    }


    public void setCompetencia(String competencia) {
        this.competencia = competencia;
    }


    public AprendizVo getAprendizVo() {
        return AprendizVo;
    }


    public void setAprendizVo(AprendizVo aprendizVo) {
        AprendizVo = aprendizVo;
    }

    

    


}
