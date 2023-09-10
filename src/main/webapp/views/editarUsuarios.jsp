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
    <link rel="stylesheet" type="text/css"  href="css/style_registrar.css">
    <title>Registro</title>
</head>
<body>
    <header class="header1">
        <div class="logo">
            <img src="img/logo_sena.jpeg" width="80px">
        </div>
        <nav>
            <ul class="title">
                <h1 class="h1">GESTIONA TU FICHA - REGISTRATE </h1>
            </ul>
        </nav>
    </header>

    <header class="navegation">
        <div class="options">
            <h4><a href="#">Ayuda y Soporte</a></h4>
            <h4><a href="#Administrador">Administrador</a></h4>
            <h4><a href="#Instructor">Instructor</a></h4>
        </div>
            <h4 class="ingresar"><a href="index.jsp">Salir</a></h4>
            <a href="index.jsp"><i class="fa-solid fa-right-to-bracket"></i></a>
    </header>

    <section class="home">

        <video class="video-slide active" src="img/Video clip SENA.mp4" autoplay muted loop></video>

        <div class="content active">
            <h1>Aqui puedes registrarte <br><span>SENA</span></h1>
            <p>La parte mas fundamental para nosotros es que hagas parte de nuestra familia, gracias por estar con nosotros.</p>
            <a href="#Administrador">Registrarte</a>
        </div>
    
    </section>
    <form action="usuario" method="POST" class="formularioRgeistro">
    <div class="formularioRgeistro ">
    
            <div class="registrarAdmin">
                <form class="" method="POST">
                    <h2 id="Administrador">REGISTRAR USUARIO! </h2>
                    <div class="name">
                        <label for="nombreUsuario">Nombre</label>
                        <input type="text" name="nombreUsuario" id="nombreUsuario" class="form-control" required value="${usuario.nombreUsuario}">
                    </div>
                    <div class="name">
                        <label for="tipodocUsuario">Tipo documento</label>
                        <input type="text" name="tipodocUsuario" id="tipodocUsuario" class="form-control" required value="${usuario.tipodocUsuario}">
                    </div>
                    <div class="name">
                        <label for="documentoUsuario">Numero Documento</label>
                        <input type="text" name="documentoUsuario" id="documentoUsuario" class="form-control" required value="${usuario.documentoUsuario}">
                    </div>
                
                    <div class="name">
                        <label for="celularUsuario">Numero Celular</label>
                        <input type="text" name="celularUsuario" id="celularUsuario" class="form-control" required value="${usuario.celularUsuario}">
                    </div>
                
                    <div class="name">
                        <label> Rol-Cargo</label><p></p>
                        <select name="rol" id="rol" value="${usuario.rol}">
                            <option value="Administrador">Administrador</option>
                            <option value="Instructor">Instructor</option>   
                        </select>
                    </div>
                
                    <div class="name">
                        <label for="correo">Correo</label>
                        <input type="email" name="correo" id="correo" class="form-control" required value="${usuario.correo}">
                    </div>
                
                    <div class="name">
                        <label for="clave">Contraseña</label>
                        <input type="password" name="clave" id="clave" class="form-control" required value="${clave}">
                    </div>
                
                    <div>
                        <button type="submit"  name="accion" value="actualizar">Actualizar</button>
                    </div>
    
               
            </div>
        </div>
</form>
   

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