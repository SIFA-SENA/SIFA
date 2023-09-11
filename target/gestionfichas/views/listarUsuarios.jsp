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
    <title>SIFA-Gestion fichas</title>
</head>
<body>
    <!--HEADER-->
    <header class="header1">
        <div class="logo">
            <img src="img/logo_sena.jpeg" width="80px">
        </div>
        <nav>
            <ul class="title">
                <h1 class="h1">USUARIOS </h1>
            </ul>
        </nav>
    </header>

    <header class="navegation">
        <div class="options">
            <h4><a href="#">Consultar Ficha</a></h4>
            <h4><a href="ficha?accion=abrirForm">Crear Ficha</a></h4>
            <h4><a href="#">Ayuda y Soporte</a></h4>
        </div>
        <h4><a href="ficha?accion=listar">Atras</a></h4>
            <h4 class="ingresar"><a href="index.jsp">Salir</a></h4>
            <a href="index.jsp"><i class="fa-solid fa-right-to-bracket"></i></i></a>
    </header>

    <!--CARDS-->

 

<div class="flex-fill flex-grow-1 ms-3">

  
    <div id="container">
        <table>
        
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Tipo Documento</th> 
                <th>No Identificación</th>            
                <th>Celular</th>
                <th>Correo</th>
                <th>Clave</th>
                <th>Cargo</th>   
                <th>Editar</th>  
            </tr>       
                  
                  <tr>
                    <c:forEach var="usuario" items="${usuario}">  
        
                    <tr>
                        <td>${usuario.getIdUsuario()}</td>
                        <td>${usuario.getNombreUsuario()}</td>
                        <td>${usuario.getTipodocUsuario()}</td>
                        <td>${usuario.getDocumentoUsuario()}</td>
                        <td>${usuario.getCelularUsuario()}</td>
                        <td>${usuario.getCorreo()}</td>
                        <td>${usuario.getClave()}</td>
                        <td>${usuario.getRol()}</td>
                        <td><a href="usuario?accion=editar&id=${usuario.getIdUsuario()}"><button>editar</button></a></td>
                        
                    </tr>
              
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