package model;

public class UsuarioVo {

 private int idUsuario;
 private String nombreUsuario;
 private String tipodocUsuario;
 private int documentoUsuario;
 private int celularUsuario;
 private String rol;
 private String usuario;
 private String correo;
 private String clave;


public UsuarioVo() {
}


public UsuarioVo(int idUsuario, String nombreUsuario, String tipodocUsuario, int documentoUsuario, int celularUsuario,
        String rol, String usuario, String correo, String clave) {
    this.idUsuario = idUsuario;
    this.nombreUsuario = nombreUsuario;
    this.tipodocUsuario = tipodocUsuario;
    this.documentoUsuario = documentoUsuario;
    this.celularUsuario = celularUsuario;
    this.rol = rol;
    this.usuario = usuario;
    this.correo = correo;
    this.clave = clave;
}


public int getIdUsuario() {
    return idUsuario;
}


public void setIdUsuario(int idUsuario) {
    this.idUsuario = idUsuario;
}


public String getNombreUsuario() {
    return nombreUsuario;
}


public void setNombreUsuario(String nombreUsuario) {
    this.nombreUsuario = nombreUsuario;
}


public String getTipodocUsuario() {
    return tipodocUsuario;
}


public void setTipodocUsuario(String tipodocUsuario) {
    this.tipodocUsuario = tipodocUsuario;
}


public int getDocumentoUsuario() {
    return documentoUsuario;
}


public void setDocumentoUsuario(int documentoUsuario) {
    this.documentoUsuario = documentoUsuario;
}


public int getCelularUsuario() {
    return celularUsuario;
}


public void setCelularUsuario(int celularUsuario) {
    this.celularUsuario = celularUsuario;
}


public String getRol() {
    return rol;
}


public void setRol(String rol) {
    this.rol = rol;
}


public String getUsuario() {
    return usuario;
}


public void setUsuario(String usuario) {
    this.usuario = usuario;
}


public String getCorreo() {
    return correo;
}


public void setCorreo(String correo) {
    this.correo = correo;
}


public String getClave() {
    return clave;
}


public void setClave(String clave) {
    this.clave = clave;
}

}


