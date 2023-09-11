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
    <link rel="stylesheet" href="css/style_inicioSesion.css">
    <link rel="shortcut icon" href="img/logo_sena.jpeg">
    <title>SIFA-Iniciar Sesion</title>
</head>
<body>
    <header class="header1">
        <div class="logo">
            <img src="img/logo_sena.jpeg" width="80px">
        </div>
        <nav>
            <ul class="title">
                <h1 class="h1"> INICIAR SESION </h1>
            </ul>
        </nav>
    </header>

    <header class="navegation">
        <div class="options">
            <h4><a href="#">Ayuda y Soporte</a></h4>
        </div>
            <h4 class="ingresar"><a href="index.html">Salir</a></h4>
            <a href="index.html"><i class="fa-solid fa-right-to-bracket"></i></a>
    </header>


   
    <div class="formularios ">
        <div>
            <div class="loginAdmin">
                <form action="usuario" method="post" class="formulario">
                    <h2>Usuario</h2>
                    <div class="username">
                        <label> Correo Electronico</label><p></p>
                        <input type="text" name="nombreUsuario" id="nombreUsuario" class="username" required>
                    </div>
                    <div class="password">
                        <label>Contraseña</label><p></p>
                        <input type="password" name="clave" id="clave" class="password" required>
                    
                    </div> 
                    <input type="submit" class="btn btn-primary" name="accion" value="iniciarSesionl"  ></input>
                    
            </div>
        </div>
        
    

        

    
    <h3>No tienes cuenta? <a href="usuario?accion=abrirForm">Registrate aqui!</a></h3>
  

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

