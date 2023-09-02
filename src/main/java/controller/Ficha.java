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
         if (accion != null) {
         switch (accion) {

            case "abrirForm":
            abrirFormF(req,resp);
            break;
            case "listar":
            listarFicha(req,resp);
            break;
            case "actualizar":
            actualizarFicha(req,resp);
            break;

            
            }

            
            }else if (req.getParameter("cambiar") != null) {
                cambiarEstado(req, resp);
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
           /*  case "actualizarFicha":
            editarFicha(req,resp);
            */
           
        } 
        
    }

    //ABRIR FORMULARIO REGISTRAR FICHA

    private void abrirFormF(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("Entro al metodo abrir formulario");
        try{
            req.getRequestDispatcher("views/gestionFichas.jsp").forward(req, resp);
            System.out.println("El formulario ha sido abierto");
        }catch(Exception e){
            System.out.println("El formulario NO ha sido abierto"+e.getMessage().toString());
        }
    }
    
    //registro ficha
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
            req.getRequestDispatcher("ficha?accion=abrirForm").forward(req, resp);
        } catch (Exception e) {
            System.out.println("Error en la inserción del registro "+e.getMessage().toString());
        }
    }
    }
    //listar ficha
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

/* /editar ficha
  private void actualizarUsuario(HttpServletRequest req, HttpServletResponse resp) {
        
    

        if (req.getParameter("hCodigo") != null
                && request.getParameter("txtNombre") != null
                && request.getParameter("txtClave") != null
                && request.getParameter("cboCargo") != null) {

            usus = new usuario();
            usus.setId_usuario(Integer.parseInt(request.getParameter("hCodigo")));
            usus.setNombreUsuario(request.getParameter("txtNombre"));
            usus.setClave(request.getParameter("txtClave"));
            car = new cargo();
            car.setCodigo(Integer.parseInt(request.getParameter("cboCargo")));
            usus.setCargo(car);
            if (request.getParameter("chkEstado") != null) {
                usus.setEstado(true);
            } else {
                usus.setEstado(false);
            }
            daoUsu = new DAOUSUARIO();
            try {
                daoUsu.actualizarUsuarios(usus);
                response.sendRedirect("srvUsuario?accion=listarUsuarios");
            } catch (Exception e) {
                request.setAttribute("msje",
                        "No se pudo actualizar el usuario" + e.getMessage());
                request.setAttribute("usuario", usus);

            }
            try {
                this.cargarCargos(request);
                this.getServletConfig().getServletContext().
                        getRequestDispatcher("/vistas/actualizarUsuario.jsp"
                        ).forward(request, response);
            } catch (Exception ex) {
                request.setAttribute("msje", "No se pudo realizar la operacion" + ex.getMessage());
            }
        }
    } */

//activar e inactivar ficha
private void cambiarEstado(HttpServletRequest req, HttpServletResponse resp) {
    /*  DAOUSUARIO dao; ud
     usuario usu; u */ 
     try {
       
         if (req.getParameter("cambiar").equals("Lectiva")) {
             fv.setEstadoFicha("Lectiva");
         } else if(req.getParameter("cambiar").equals("Productiva")) {
             fv.setEstadoFicha("Productiva");
         }else if(req.getParameter("cambiar").equals("FormacionTerminada")) {
             fv.setEstadoFicha("FormacionTerminada");
         }
         if (req.getParameter("cod") != null) {
             fv.setIdFicha(Integer.parseInt(req.getParameter("cod")));
             fd.estadoF(fv);
         } else {
             req.setAttribute("msje", "No se obtuvo el id del usuario");
         }
         } catch (Exception e) {
         req.setAttribute("msje", e.getMessage());
     }
     this.listarFicha(req, resp);
 }
//listar ficha
     private void actualizarFicha(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List ficha=fd.listarFicha();
            req.setAttribute("ficha",ficha);
            req.getRequestDispatcher("views/editarFichas.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
    }

}
}