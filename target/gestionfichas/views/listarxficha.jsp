<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/c628e42b8b.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/fichas.css">
    <link rel="stylesheet" type="text/css" href="css/style_gestionFichas.css">
    <link rel="shortcut icon" href="img/logo_sena.jpeg">
    <title>SIFA-Gestion Aprendiz</title>
</head>
<body>
    <!--HEADER-->
    <header class="header1">
        <div class="logo">
            <img src="img/logo_sena.jpeg" width="80px">
        </div>
        <nav>
            <ul class="title">
                <h1 class="h1">GESTIONA TU FICHA </h1>
            </ul>
        </nav>
    </header>

    <header class="navegation">
        <div class="options">
            <h4><a href="ficha?accion=listar">Consultar Ficha</a></h4>
            <h4><a href="ficha?accion=abrirForm">Registrar Ficha</a></h4>
            <h4><a href="usuario?accion=consultar">Consultar Usuarios</a></h4>
            <h4><a href="aprendiz?accion=FormRegistrarA">Registrar Aprendiz</a></h4>
          
        </div>
            <h4 class="ingresar"><a href="index.jsp">Salir</a></h4>
            <a href="index.jsp"><i class="fa-solid fa-right-to-bracket"></i></i></a>
    </header>

    <!--CARDS-->

 

<div class="flex-fill flex-grow-1 ms-3">

  
    <div id="container">
        <table>
        
               <tr>
                   <th>Id aprendiz</th>
                   <th>Nombre aprendiz</th>
                   <th>Tipo documento aprendiz</th>
                   <th>Documento aprendiz</th>
                   <th>Celular aprendiz</th>
                   <th>Correo aprendiz</th>
                   <th>Fecha nacimiento aprendiz</th>
                   <th>Estado aprendiz</th>
                   <th>Observaciones</th>       
                   <th colspan="2"><center>Acciones</center></th> 
               </tr>
               
               <c:forEach var="aprendiz" items="${aprendiz}"  >         
               
               <tr>
               <td>${aprendiz.getIdAprendiz()}</td>
               <td>${aprendiz.getNombreAprendiz()}</td>
               <td>${aprendiz.getTipodocAprendiz()}</td>
               <td>${aprendiz.getDocumentoAprendiz()}</td>
               <td>${aprendiz.getCelularAprendiz()}</td>
               <td>${aprendiz.getCorreoAprendiz()}</td> 
               <td>${aprendiz.getFechaNacimientoAprendiz()}</td> 
               <td>${aprendiz.getEstadoAprendiz()}</td> 
               <td>${aprendiz.getObservaciones()}</td> 
             
               <td>
                        <a href="aprendiz?accion=editarA&id=${aprendiz.getIdAprendiz()}" class="btn btn-danger"  data-toggle="tooltip" title="Desactivar" data-original-title="Desactivar">
                          <i class="fa-solid fa-pen"></i></a>
                <!-- <button type="submit" class="btn btn-editar"><a href="usuario?accion=editarUsuario&cod=${usuario.getIdUsua()}"></a><i class="fa-solid fa-pen"></i></button> -->
              </td>
              
        </c:forEach> 
       
       
      
       </table>
     </div>
       
       
       </div> 
       </div>
    


   <!--FOOTER-->
   
   <footer class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col">
                <h4>Otras plataformas</h4>
                <ul>
                    <li><a href="https://oferta.senasofiaplus.edu.co/">Sena Sofia Plus</a></li>
                    <li><a href="https://sena.territorio.la/cms/index.php">Territorium</a></li>
                    <li><a href="https://www.sena.edu.co/es-co/Paginas/default.aspx">Sena y noticias</a></li>
                    <li><a href="#">Politica de privacidad</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>Necesitas ayuda?</h4>
                <ul>
                    <li><a href="#">Preguntas frecuentes</a></li>
                    <li><a href="#">Guia</a></li>
                    <li><a href="#">Desarrolladores</a></li>
                </ul>
            </div>

            <div class="footer-col">
                <h4>Siguenos</h4>
                <div class="social-links">
                    <a href="https://www.facebook.com/SENA?locale=es_LA"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://twitter.com/SENAComunica?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><i class="fab fa-twitter"></i></a>
                    <a href="https://www.instagram.com/senacomunica/?hl=es-la"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>

</body>
</html>