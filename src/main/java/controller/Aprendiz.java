package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FichaDao;
import model.FichaVo;
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

            case "FormRegistrarA":
            FormRegistrarA(req,resp);
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
           /*  case "actualizarFicha":
            editarFicha(req,resp);
            */
           
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
        }

        try {
            ad.registrarAprendiz(av);
            System.out.println("Registro insertado correctamente");
            req.getRequestDispatcher("ficha?accion=FormRegistrarA").forward(req, resp);
        } catch (Exception e) {
            System.out.println("Error en la inserción del registro "+e.getMessage().toString());
        }
    }
    }
    
