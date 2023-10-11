package model;

public class FichaVo {
    private int idFicha;
    private String programaFormacion;
    private String areaFormacion;
    private String lugarFormacion;
    private String estadoFicha;

    public FichaVo() {
    }

    

    public FichaVo(int idFicha, String programaFormacion, String areaFormacion, String lugarFormacion,
            String estadoFicha) {
        this.idFicha = idFicha;
        this.programaFormacion = programaFormacion;
        this.areaFormacion = areaFormacion;
        this.lugarFormacion = lugarFormacion;
        this.estadoFicha = estadoFicha;
    }



    public int getIdFicha() {
        return idFicha;
    }

    public void setIdFicha(int idFicha) {
        this.idFicha = idFicha;
    }

    public String getProgramaFormacion() {
        return programaFormacion;
    }

    public void setProgramaFormacion(String programaFormacion) {
        this.programaFormacion = programaFormacion;
    }

    public String getAreaFormacion() {
        return areaFormacion;
    }

    public void setAreaFormacion(String areaFormacion) {
        this.areaFormacion = areaFormacion;
    }

    public String getLugarFormacion() {
        return lugarFormacion;
    }

    public void setLugarFormacion(String lugarFormacion) {
        this.lugarFormacion = lugarFormacion;
    }

    public String getEstadoFicha() {
        return estadoFicha;
    }

    public void setEstadoFicha(String estadoFicha) {
        this.estadoFicha = estadoFicha;
    }
    

    
    
}
