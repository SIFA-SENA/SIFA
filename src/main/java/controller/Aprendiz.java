package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FichaDao;
import model.FichaVo;
import model.UsuarioVo;
import model.AprendizDao;
import model.AprendizVo;

public class Aprendiz extends HttpServlet {

    FichaDao fd= new FichaDao();
    FichaVo fv= new FichaVo();
    AprendizDao ad= new AprendizDao();
    AprendizVo av= new AprendizVo();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entro Al DoGet");
        String accion=req.getParameter("accion");/* Se obtiene el valor del parámetro "accion" de la solicitud */
        

        /* Se utiliza un switch para realizar
         diferentes acciones según el valor de la variable accion. */
        
         switch (accion) {

            case "listarA":
            listarAprendiz(req,resp);
            break;
            
            case "FormRegistrarA":
            FormRegistrarA(req,resp);
            break;

            case "editarA":
            editarAprendiz(req,resp);
            break;
             case "listarAF":
            listarAprendizF(req,resp);
            break;
    
            }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("ENTRO AL DOPOST");
        String accion=req.getParameter("accion");
        switch (accion) {
            case "registrarAprendiz":
            registrarAprendiz(req,resp);
            break;

            case "actualizarAprendiz":
            actualizarAprendiz(req,resp);
            break;
           
           
        } 
    }
    
    //-----------------------------------ABRIR FORMULARIO REGISTRAR APRENDIZ ---------------------------------

    private void FormRegistrarA(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("Entro al metodo abrir formulario");
        try{
            req.getRequestDispatcher("views/registrarAprendiz.jsp").forward(req, resp);
            System.out.println("El formulario ha sido abierto");
        }catch(Exception e){
            System.out.println("El formulario NO ha sido abierto"+e.getMessage().toString());
        }
    }
//-------------------------------------------- REGISTRAR APRENDIZ ----------------------------------------------
    private void registrarAprendiz(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("Entró al Registro de ficha");

    
        if(req.getParameter("nombreAprendiz")!=null){
            av.setNombreAprendiz(req.getParameter("nombreAprendiz"));
        }
        if(req.getParameter("tipodocAprendiz")!=null){
            av.setTipodocAprendiz((req.getParameter("tipodocAprendiz")));
        }
        if(req.getParameter("documentoAprendiz")!=null){
            av.setDocumentoAprendiz(Integer.parseInt(req.getParameter("documentoAprendiz")));
        }
        if(req.getParameter("celularAprendiz")!=null){
            av.setCelularAprendiz(Integer.parseInt(req.getParameter("celularAprendiz")));
        }
        if(req.getParameter("correoAprendiz")!=null){
            av.setCorreoAprendiz((req.getParameter("correoAprendiz")));
        }
        if(req.getParameter("fechaNacimientoAprendiz")!=null){
            av.setFechaNacimientoAprendiz((req.getParameter("fechaNacimientoAprendiz")));
        }
        if(req.getParameter("estadoAprendiz")!=null){
            av.setEstadoAprendiz((req.getParameter("estadoAprendiz")));
        }
        if(req.getParameter("observaciones")!=null){
            av.setObservaciones((req.getParameter("observaciones")));
        }
        if(req.getParameter("idFichaFK")!=null){
            fv.setIdFicha(Integer.parseInt(req.getParameter("idFichaFK")));
            av.setFichaVo(fv);
           
        }

        try {
            ad.registrarAprendiz(av,fv);
            System.out.println("Registro insertado correctamente");
            req.getRequestDispatcher("views/gestionFichas.jsp").forward(req, resp);
        } catch (Exception e) {
            System.out.println("Error en la inserción del registro "+e.getMessage().toString());
        }
    }

    //---------------------------------------- LISTAR APRENDIZ-------------------------
     private void listarAprendiz(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List aprendiz=ad.listarAprendiz();
            req.setAttribute("aprendiz",aprendiz);
            req.getRequestDispatcher("views/listarAprendices.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
    }
    }

        //-------------------- ABRIR FORMULARIO EDITAR POR ID ---------------------------------------------------
int ida;
 private void editarAprendiz(HttpServletRequest req, HttpServletResponse resp) {
    
      ida=Integer.parseInt(req.getParameter("id"));
        AprendizVo a=ad.listarIdApr(ida);
          try {
            req.setAttribute("aprendiz",a);
             req.getRequestDispatcher("views/editarAprendiz.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
    }
}

//--------------------------------------------EDITAR FICHA ----------------------------------------------

  private void actualizarAprendiz(HttpServletRequest req, HttpServletResponse resp) {

        String nombreAprendiz=req.getParameter("nombreAprendiz");
        String tipodocAprendiz=req.getParameter("tipodocAprendiz");
        int documentoAprendiz=Integer.parseInt(req.getParameter("documentoAprendiz"));
        int celularAprendiz=Integer.parseInt(req.getParameter("celularAprendiz"));
        String correoAprendiz=req.getParameter("correoAprendiz");
        String fechaNacimientoAprendiz=req.getParameter("fechaNacimientoAprendiz");
        String estadoAprendiz=req.getParameter("estadoAprendiz");
        String observaciones=req.getParameter("observaciones");
        int idFichaFK=Integer.parseInt(req.getParameter("idFichaFK"));

        av.setNombreAprendiz(nombreAprendiz);
        av.setTipodocAprendiz(tipodocAprendiz);
        av.setDocumentoAprendiz(documentoAprendiz);
        av.setCelularAprendiz(celularAprendiz);
        av.setCorreoAprendiz(correoAprendiz);
        av.setFechaNacimientoAprendiz(fechaNacimientoAprendiz);
        av.setEstadoAprendiz(estadoAprendiz);
        av.setObservaciones(observaciones);
        fv.setIdFicha(idFichaFK);
        av.setIdAprendiz(ida);
       
         try {
            ad.actualizarAprendiz(av,fv);
            List aprendiz=ad.listarAprendiz();
            req.setAttribute("aprendiz",aprendiz);
            req.getRequestDispatcher("views/listarAprendices.jsp").forward(req, resp);
         } catch (Exception e) {
          
         }
         
    }

    //------------------- ABRIR LISTAR APRENDICES POR FICHA--------------------------------------
int idaf;
 private void listarAprendizF(HttpServletRequest req, HttpServletResponse resp) {
    
      idaf=Integer.parseInt(req.getParameter("idF"));
       
          try {
             List aprendiz=ad.listarAprendiz(idaf);
            
            
            req.setAttribute("aprendiz",aprendiz);
             req.getRequestDispatcher("views/listarxficha.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos"+e.getMessage().toString());
    }
}


}
