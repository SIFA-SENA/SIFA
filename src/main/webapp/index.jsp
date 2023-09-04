<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/c628e42b8b.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style_index.css">
    <link rel="shortcut icon" href="img/logo_sena.jpeg">

    <title>Portal de gestion de fichas</title>
</head>
<body>
    <header class="header1">
        <div class="logo">
            <img src="img/logo_sena.jpeg" width="80px">
        </div>
        <nav>
            <ul class="title">
                <h1 class="h1">GESTIONA TU FICHA</h1>
            </ul>
        </nav>
    </header>

    <header class="navegation">
        <div class="options">
            <h4 ><a href="#">Informacion</a></h4>
            <h4><a href="#">Ayuda y Soporte</a></h4>
        </div>
            <h4 class="ingresar"><a href="usuario?accion=abrirFormLogin">Ingresar</a></h4>
            <h4 class="ingresar"><a href="usuario?accion=abrirForm">Registrarse</a></h4>
            <a href="iniciarSesion.jsp"><i class="fa-regular fa-user"></i></a>
    </header>
    

    <diV class="wrapper">
        <video class="video-slide active" src="img/SENA, el lugar de las oportunidades (videoclip).mp4" autoplay muted loop></video>
        <div class="text-box">
            <h2>De que trata</h2>
            <p class="text">Bienvenido a Gestiona tu ficha, aqui podras 
                observar las listas de tus fichas preferidas, 
                podras interactuar con ellas y mas.
            Trata de un sistema de gestion de fichas y aprendices para manejar la información mas facil y practica desde una vista mas sencilla, con el buscamos agilizar procesos y mas. </p>
        </div>
    </diV>


    <diV class="wrapper2">
        <img class="gente2" src="img/gente.jpeg" alt="">
        <div class="text-box2">
            <h2>Quienes lo pueden usar</h2>
            <p class="text">
                Este sistema de informacion esta echo para organizar mas facilmente, las listas de aprendices y su asistencia a la fomacion brindada.
                Sera utilizados por instructores permitidos y administradores que necesiten de la información anterior 
            </p>
        </div>
    </diV>



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