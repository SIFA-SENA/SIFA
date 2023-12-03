package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FichaVo;
import model.FichaDao;

public class Ficha extends HttpServlet {
    
    FichaDao fd= new FichaDao();
    FichaVo fv= new FichaVo();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entro Al DoGet");
        String accion=req.getParameter("accion");/* Se obtiene el valor del parámetro "accion" de la solicitud */
        

        /* Se utiliza un switch para realizar
         diferentes acciones según el valor de la variable accion. */
         
         switch (accion) {

            case "abrirForm":
            abrirFormF(req,resp);
            break;
               case "abrirFormI":
            abrirFormFI(req,resp);
            break;
            case "listarI":
            listarFichaI(req,resp);
            break;
             case "listar":
            listarFicha(req,resp);
            break;
            case "Editar":
            editar(req,resp);
            break;
            case "Buscar":
            filtroFicha(req, resp);


            

            
            }

            
            
      
        }
        
    
    


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("ENTRO AL DOPOST");
        String accion=req.getParameter("accion");


        /* Se utiliza un switch para realizar 
         acciones según el valor de la variable a */
        switch (accion) {
            case "registrarFicha":
            registrarFicha(req,resp);
            break;
            case "actualizarFicha":
            actualizarFichas(req,resp);
            
           
        } 
        
    }

    //-----------------------------------ABRIR FORMULARIO REGISTRAR FICHA ---------------------------------

    private void abrirFormF(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("Entro al metodo abrir formulario");
        try{
            req.getRequestDispatcher("views/gestionFichas.jsp").forward(req, resp);
            System.out.println("El formulario ha sido abierto");
        }catch(Exception e){
            System.out.println("El formulario NO ha sido abierto"+e.getMessage().toString());
        }
    }
        //-----------------------------------ABRIR FORMULARIO REGISTRAR FICHA ---------------------------------

    private void abrirFormFI(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("Entro al metodo abrir formulario");
        try{
            req.getRequestDispatcher("views/gestionFichas1.jsp").forward(req, resp);
            System.out.println("El formulario ha sido abierto");
        }catch(Exception e){
            System.out.println("El formulario NO ha sido abierto"+e.getMessage().toString());
        }
    }
    
    
    //----------------------------------------REGISTRAR FICHA -------------------------------------------------
    private void registrarFicha(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("Entró al Registro de ficha");

        if(req.getParameter("idFicha")!=null){
            fv.setIdFicha(Integer.parseInt(req.getParameter("idFicha")));
        }
        if(req.getParameter("programaFormacion")!=null){
            fv.setProgramaFormacion(req.getParameter("programaFormacion"));
        }
        if(req.getParameter("areaFormacion")!=null){
            fv.setAreaFormacion((req.getParameter("areaFormacion")));
        }
        if(req.getParameter("lugarFormacion")!=null){
            fv.setLugarFormacion((req.getParameter("lugarFormacion")));
        }
        if(req.getParameter("estadoFicha")!=null){
            fv.setEstadoFicha((req.getParameter("estadoFicha")));
        try {
            fd.registrarFicha(fv);
            System.out.println("Registro insertado correctamente");
            resp.sendRedirect("ficha?accion=listar");
         
        } catch (Exception e) {
            System.out.println("Error en la inserción del registro "+e.getMessage().toString());
        }
    }
    }
    //-----------------------------------------LISTAR FICHA ------------------------------------------------
    private void listarFicha(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List ficha=fd.listarFicha();
            req.setAttribute("ficha",ficha);
            req.getRequestDispatcher("views/listarFichas.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
        }
    }   

      private void listarFichaI(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List ficha=fd.listarFicha();
            req.setAttribute("ficha",ficha);
            req.getRequestDispatcher("views/listarFichas1.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
        }
    }  
//-------------------- ABRIR FORMULARIO EDITAR POR ID ---------------------------------------------------
int ide;
 private void editar(HttpServletRequest req, HttpServletResponse resp) {
    
      ide=Integer.parseInt(req.getParameter("id"));
        FichaVo f=fd.listarId(ide);
          try {
            req.setAttribute("ficha",f);
             req.getRequestDispatcher("views/editarFichas.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
    }
}

//--------------------------------------------EDITAR FICHA ----------------------------------------------

  private void actualizarFichas(HttpServletRequest req, HttpServletResponse resp) {

        String programaFormacion=req.getParameter("programaFormacion");
        String areaFormacion=req.getParameter("areaFormacion");
        String lugarFormacion=req.getParameter("lugarFormacion");
         String estadoFicha=req.getParameter("estadoFicha");
        

        fv.setProgramaFormacion(programaFormacion);
        fv.setLugarFormacion(lugarFormacion);
        fv.setAreaFormacion(areaFormacion);
        fv.setEstadoFicha(estadoFicha);
        fv.setIdFicha(ide);
       
         try {
            fd.actualizarFicha(fv);
            List ficha=fd.listarFicha();
            req.setAttribute("ficha",ficha);
            req.getRequestDispatcher("views/listarFichas.jsp").forward(req, resp);
         } catch (Exception e) {
          
         }
         
    }
//-------------- FILTRO BUSCAR FICHA -------------------------
 private void filtroFicha(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String dato=req.getParameter("txtBuscar");
            List ficha=fd.filtroFicha(dato);
            req.setAttribute("ficha",ficha);
            req.getRequestDispatcher("views/listarFichas.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
        }
    }   


}