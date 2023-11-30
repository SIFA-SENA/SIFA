package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AsistenciaVo;
import model.AsistenciaDao;

 
   

public class Asistencia extends HttpServlet{

    AsistenciaDao asd= new AsistenciaDao();
    AsistenciaVo asv= new AsistenciaVo();


    

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entro Al DoGet");
        String accion=req.getParameter("accion");/* Se obtiene el valor del parámetro "accion" de la solicitud */
        

        /* Se utiliza un switch para realizar
         diferentes acciones según el valor de la variable accion. */
        
         switch (accion) {
            
           
            }

    }
  




    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("ENTRO AL DOPOST");
        String accion=req.getParameter("accion");
        switch (accion) {
            
           
           
        } 
    }




    //---------------------------------------- LISTAR APRENDIZ-------------------------
     private void listarAprendiz(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List asistencia=asd.consultarLista();
            req.setAttribute("asistencia",asistencia);
            req.getRequestDispatcher("views/listarAprendices.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos "+e.getMessage().toString());
    }
    }

    
}
