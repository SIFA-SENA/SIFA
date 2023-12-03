package controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import model.Conexion;
import model.UsuarioDao;
import model.UsuarioVo;

public class Usuario extends HttpServlet{
    
    UsuarioVo uv=new UsuarioVo();
    UsuarioDao ud=new UsuarioDao();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entró al DoGet");
        String accion = req.getParameter("accion");
            switch(accion){
                case "consulta":
                req.getRequestDispatcher("views/gestionFichas.jsp").forward(req, resp);
            break;
                case "inicio":
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            break;
            case "consultar":
                listar(req, resp);
            break;
            case "consultarI":
                listarI(req, resp);
            break;
            case "abrirFormA":
                abrirFormA(req, resp);
            break;
            case "abrirForm":
                abrirForm(req, resp);
            break;
            
            case "abrirFormLogin":
                abrirFormLogin(req, resp);
            break;
            case "editar":
                editarUsuario(req, resp);
            break;
            case "Buscar":
                filtroUsua(req, resp);
            break;
             case "leerExcel":
                leerArchivoExcel();
            break;
           

            default:
                System.out.println("La pagina no se ha encontrado");
            }
            
        }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entró al DoPost");
        String accion=req.getParameter("accion");
        switch(accion){
            case "registrar":
            add(req, resp);
            break;
            case "registrarA":
            addA(req, resp);
            break;

            case "iniciarSesionl":
            try {
                    iniciarSesionl(req, resp);
                } catch (SQLException e) {
                    System.out.println("No se pudo ingresar al sistema "+e.getMessage().toString());
                }
            break;
            case "actualizar":
            actualizarUsuarios(req, resp);
            break;
            
        

           
            
            
        }

    }

//---------------------------- ABRIR FORMULARIO REGISTRO USUARIOS ----------------------------------------
    private void abrirForm(HttpServletRequest req, HttpServletResponse resp) {
        try{
            req.getRequestDispatcher("views/registrarse.jsp").forward(req, resp);
            System.out.println("El formulario ha sido abierto");
        }catch(Exception e){
            System.out.println("El formulario NO ha sido abierto"+e.getMessage().toString());
        }
    }

//--------------------------- ABRIR FORMULARIO PARA REGISTRAR USUARIOS Y ADMINISTRADORES --------
private void abrirFormA(HttpServletRequest req, HttpServletResponse resp) {
    try{
        req.getRequestDispatcher("views/registrarAdmin.jsp").forward(req, resp);
        System.out.println("El formulario ha sido abierto");
    }catch(Exception e){
        System.out.println("El formulario NO ha sido abierto"+e.getMessage().toString());
    }
}

//---------------------------- REGISTRAR USUARIO INSTRUCTOR------------------------------------------

private void add (HttpServletRequest req, HttpServletResponse resp) {

    System.out.println("ingresaste a registrar usuario");

    if(req.getParameter("idUsuario")!=null){
        uv.setIdUsuario(Integer.parseInt(req.getParameter("idUsuario")));
    }

    if(req.getParameter("nombreUsuario")!=null){
        uv.setNombreUsuario(req.getParameter("nombreUsuario"));
    }
    if(req.getParameter("tipodocUsuario")!=null){
        uv.setTipodocUsuario(req.getParameter("tipodocUsuario"));
    }
    if(req.getParameter("documentoUsuario")!=null){
        uv.setDocumentoUsuario(Integer.parseInt(req.getParameter("documentoUsuario")));
    }
    if(req.getParameter("celularUsuario")!=null){
        uv.setCelularUsuario(Integer.parseInt(req.getParameter("celularUsuario")));
    }
    
      if(req.getParameter("usuario")!=null){
        uv.setUsuario(req.getParameter("usuario"));
    }

    if(req.getParameter("correo")!=null){
        uv.setCorreo(req.getParameter("correo"));
    }
    if(req.getParameter("clave")!=null){
        uv.setClave(req.getParameter("clave"));
    }
    try {
        ud.registrar(uv);
        System.out.println("Registro insertado correctamente");
          req.getRequestDispatcher("views/iniciarSesion.jsp").forward(req, resp);
    } catch (Exception e) {
        System.out.println("Error en la inserción del registro "+e.getMessage().toString());
    }
}
    //---------------------------- REGISTRAR USUARIO ------------------------------------------

    private void addA (HttpServletRequest req, HttpServletResponse resp) {

        System.out.println("ingresaste a registrar usuario");

        if(req.getParameter("idUsuario")!=null){
            uv.setIdUsuario(Integer.parseInt(req.getParameter("idUsuario")));
        }

        if(req.getParameter("nombreUsuario")!=null){
            uv.setNombreUsuario(req.getParameter("nombreUsuario"));
        }
        if(req.getParameter("tipodocUsuario")!=null){
            uv.setTipodocUsuario(req.getParameter("tipodocUsuario"));
        }
        if(req.getParameter("documentoUsuario")!=null){
            uv.setDocumentoUsuario(Integer.parseInt(req.getParameter("documentoUsuario")));
        }
        if(req.getParameter("celularUsuario")!=null){
            uv.setCelularUsuario(Integer.parseInt(req.getParameter("celularUsuario")));
        }
        if(req.getParameter("rol")!=null){
            uv.setRol(req.getParameter("rol"));
        }
          if(req.getParameter("usuario")!=null){
            uv.setUsuario(req.getParameter("usuario"));
        }
    
        if(req.getParameter("correo")!=null){
            uv.setCorreo(req.getParameter("correo"));
        }
        if(req.getParameter("clave")!=null){
            uv.setClave(req.getParameter("clave"));
        }
        try {
            ud.registrarA(uv);
            System.out.println("Registro insertado correctamente");
            resp.sendRedirect("usuario?accion=consultar"); 
        } catch (Exception e) {
            System.out.println("Error en la inserción del registro "+e.getMessage().toString());
        }
    }
//------------------------------------- LISTAR USUARIOS -------------------------------

    private void listar(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List usuario=ud.listar();
            req.setAttribute("usuario", usuario);
            req.getRequestDispatcher("views/listarUsuarios.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
        }
    }

//------------------------------------- LISTAR USUARIOS -------------------------------

    private void listarI(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List usuario=ud.listar();
            req.setAttribute("usuario", usuario);
            req.getRequestDispatcher("views/listarUsuariosI.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
        }
    }


// ----------------------- ABRIR FORMULARIO LOGIN---------------------
private void abrirFormLogin(HttpServletRequest req, HttpServletResponse resp){

    /* try para capturar posibles excepciones/  /atch por si pasa aguna exepcion se bloquea*/
    try{
        req.getRequestDispatcher("views/iniciarSesion.jsp").forward(req, resp);/* carga y muestra la página "registrar.jsp */
        System.out.println("El Formulario Ha Sido Abierto");
    }catch(Exception e){
        System.out.println("El formulario NO ha sido abierto"+e.getMessage().toString());
    }
    }

    int r=0;

//-------------------------- INICIAR SESION -----------------------------------------

private void iniciarSesionl(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException{
    System.out.println("ingresaste al formulario");
    String accion = req.getParameter("accion");

        if (accion.equals("iniciarSesionl")) {
            String usuario = req.getParameter("usuario");
            String clave = req.getParameter("clave");
            
         
        
            uv.setUsuario(usuario);
            uv.setClave(clave);
        

            
        r = ud.validar(uv);
        
        if (r == 1) {
            req.getSession().setAttribute("usuario", usuario);
            req.getSession().setAttribute("clave", clave);
            req.getSession().setAttribute("rol", uv.getRol());
            
            
            System.out.println("Ingresaste al sistema");

            if ("Administrador".equals(uv.getRol())) {
                resp.sendRedirect("usuario?accion=consultar"); // Redirige a la vista de administrador
                 
            } else if ("Instructor".equals(uv.getRol())) {
                  resp.sendRedirect("ficha?accion=listarI"); 
            } else {
                System.out.println("Rol no reconocido");
                req.getRequestDispatcher("views/iniciarSesion.jsp").forward(req, resp);
            }
        
         } else {
            System.out.println("No se inicio sesión");
            req.setAttribute("error", "Usuario o contraseña incorrectos");
            RequestDispatcher dispatcher = req.getRequestDispatcher("views/iniciarSesion.jsp");
            dispatcher.forward(req, resp);

        }
    }


    
}


    //-------------------- ABRIR FORMULARIO EDITAR POR ID ---------------------------------------------------
int idu;
 private void editarUsuario(HttpServletRequest req, HttpServletResponse resp) {
    
      idu=Integer.parseInt(req.getParameter("id"));
        UsuarioVo u=ud.listarIdUsu(idu);
          try {
            req.setAttribute("usuario",u);
             req.getRequestDispatcher("views/editarUsuarios.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
    }
}

//--------------------------------------------EDITAR USUARIO----------------------------------------------

  private void actualizarUsuarios(HttpServletRequest req, HttpServletResponse resp) {

        String nombreUsuario=req.getParameter("nombreUsuario");
        String tipodocUsuario=req.getParameter("tipodocUsuario");
        int documentoUsuario=Integer.parseInt(req.getParameter("documentoUsuario"));
        int celularUsuario=Integer.parseInt(req.getParameter("celularUsuario"));
        String rol=req.getParameter("rol");
        String usua=req.getParameter("usuario");
        String correo=req.getParameter("correo");
        String clave=req.getParameter("clave");

        uv.setNombreUsuario(nombreUsuario);
        uv.setTipodocUsuario(tipodocUsuario);
        uv.setDocumentoUsuario(documentoUsuario);
        uv.setCelularUsuario(celularUsuario);
        uv.setRol(rol);
        uv.setUsuario(usua);
        uv.setCorreo(correo);
        uv.setClave(clave);
        uv.setIdUsuario(idu);
       
         try {
            ud.actualizarUsuario(uv);
            List usuario=ud.listar();
            req.setAttribute("usuario", usuario);
            req.getRequestDispatcher("views/listarUsuarios.jsp").forward(req, resp);
         } catch (Exception e) {
          
         }
         
    }

    // ---------------------- FILTRO USUARIO ---------------------------
   

    private void filtroUsua(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String dato=req.getParameter("txtBuscar");
            List usuario=ud.filtroUsua(dato);
            req.setAttribute("usuario", usuario);
            req.getRequestDispatcher("views/listarUsuarios.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
        }
    }

    //excel

   public static void leerArchivoExcel() throws FileNotFoundException, IOException{
        FileInputStream archivo = new FileInputStream("C:\\Users\\User\\Downloads\\Aprendiz.xlsx");
        XSSFWorkbook libro = new XSSFWorkbook(archivo);
        XSSFSheet hoja = libro.getSheetAt(0);

        int numero_Filas = hoja.getLastRowNum();

        for (int i=0 ; i<=numero_Filas ; i++){
            Row fila = hoja.getRow(i);
            int numero_Columnas = fila.getLastCellNum();

            for(int j=0 ; j<numero_Columnas ;j++){
                Cell celda=fila.getCell(j);


                switch((celda.getCellType()).toString()){
                    case "NUMERIC":
                        System.out.print(celda.getNumericCellValue()+" ");
                    break;

                    case "STRING":
                        System.out.print(celda.getStringCellValue()+" ");
                    break;

                    case "FORMULA":
                        System.out.print(celda.getCellFormula()+" ");
                    break;

                }

            }
            System.out.println(" ");

        }


    }

  



}

