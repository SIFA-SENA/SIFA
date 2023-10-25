<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="shortcut icon" href="img/logo_sena.jpg" />
    <link rel="" href="">
    <title>SIFA</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light  naveg" id="INI">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        </button>
        <img class="navegacion1" src="img/logo_sena.jpg" width="50px" height="50px">
        <a class="navbar-brand navegacion2" href="index.jsp">SIFA</a>
      
        <div class="collapse navbar-collapse navegacion" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            
            <li>
              <a class="nav-link" href="usuario?accion=abrirFormLogin">Login</a>
          </li>
          
          <li>
              <img class="imgn" src="img/usuario.png" width="20px" height="20px">
          </li>
          <li>
            <a class="nav-link" href="usuario?accion=abrirForm">Registrar</a>
          </li>
          <li>
          <a href="usuario?accion=abrirForm"><img class="navegacion1" src="img/agregar-usuario.png" width="20px" height="20px" ></a>
          </li>
          </ul>
        </div>
      </nav>

      

      <div class="row">
      
        <center>
          <section>
            <div class=" initial">
              <h1 style="color: green; font-size: 100px;">Bienvenido a SIFA</h1>
              <h2 style="color: rgb(17, 17, 17); font-size: 50px; ">SISTEMA DE INTERACCIÓN INSTRUCTORES, FICHAS Y APRENDICES </h2>
              <p style="color: rgb(17, 17, 17); font-size: 30px; margin-left: 10%; margin-right: 10%;">Este es un ejemplo de una página de inicio sencilla en blanco y negro
              Aquí puedes agregar tu contenido y personalizar según tus necesidades
              Placeholder: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            </p>
            </div>
          </section>
        </center>

      </div>

      <p></p>
      
      <div class="row contenidos g">
        <div class="col-sm">

          <center>
            <section>
              <div id="content">
                <h1 style="color: green;">Unete a nosotros</h1>
                <h2>Registrate aqui</h2>
                <p>Este es un ejemplo de una página de inicio sencilla en blanco y negro
                Aquí puedes agregar tu contenido y personalizar según tus necesidades
                Placeholder: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              </p>
              <a href="#" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Registrarme</a>
              
              </div>
            </section>
          </center>

          <center>
            <section>
              <div id="content">
                <h1 style="color: green;">Ya eres parte?</h1>
                <h2>Inicia sesión aqui</h2>
                <p>Este es un ejemplo de una página de inicio sencilla en blanco y negro
                Aquí puedes agregar tu contenido y personalizar según tus necesidades
                Placeholder: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                
              </p>
              <a href="#" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Iniciar sesión</a>
              </div>
              
            </section>
          </center>

          <center>
            <section>
              <div id="content">
                <h1 style="color: green;">Quienes somos?</h1>
                <h2>Nuestro sistema</h2>
                <p>Este es un ejemplo de una página de inicio sencilla en blanco y negro
                Aquí puedes agregar tu contenido y personalizar según tus necesidades
                Placeholder: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              </p>
              <a href="#" class="btn btn-success btn-lg active" role="button" aria-pressed="true">Conocenos</a>
              
              </div>
            </section>
          </center>

        </div>

        <div class="col-sm g">

          <center><img class="imgn" src="img/gente.jpeg" width="70%" height="60%" ></center>

          
        </div>


      </div>


      
  

    <!--footer-->
    <footer class="py-3 ">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3 ">
          <li class="nav-item"><a href="#INI" class="nav-link px-2 text-body-secondary">Home</a></li>
          <li class="nav-item"><a href="https://oferta.senasofiaplus.edu.co/sofia-oferta/" class="nav-link px-2 text-body-secondary">Sena Sofia Plus</a></li>
          <li class="nav-item"><a href="https://sena.territorio.la/index.php?login=true" class="nav-link px-2 text-body-secondary">Territorium</a></li>
          <li class="nav-item"><a href="https://web.facebook.com/SENA/?locale=es_LA&_rdc=1&_rdr" class="nav-link px-2 text-body-secondary">Facebook</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary"></a></li>
        </ul>
        <p class="text-center text-body-secondary">&copy; 2023 Sena, Colombia </p>
      </footer>
</body>
</html>

</body>
</html>