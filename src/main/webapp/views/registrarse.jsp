<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="shortcut icon" href="img/logo_sena.jpg" />
    <title>Registrarse-SIFA</title>
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-light  naveg">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"> 
            
          </span>
        </button>
        <img class="navegacion1" src="img/logo_sena.jpg" width="80px" height="80px">
        <a class="navbar-brand navegacion2" href="index.jsp">SIFA</a>
      
        <div class="collapse navbar-collapse navegacion" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

            <li>
              <a class="nav-link" href="usuario?accion=abrirFormLogin">Login</a>
          </li>
          
          <li>
              <img class="imgn" src="img/usuario.png" width="17px" height="17px">
          </li>
          
            <li>
              <a class="nav-link" href="index.jsp">Inicio</a>
          </li>
            <li>
              <a href="index.jsp"><img class="navegacion1" src="img/hogar.png" width="20px" height="20px" ></a>
            </li>

            
            
          </ul>
        </div>
      </nav>

    <div class="row">
    <div class="col-sm"></div>


    <div class="col-sm form">
    <div class="card ">
        <div class="card-header titulo">Registar usuario</div>
        <div class="card-body">

            <form action="usuario" method="POST" class="container-fluid " >

            
                <input type="text" class="form-control input" placeholder="Nombre Usuario" name="nombreUsuario" id="nombreUsuario" ></input>
                
                <p></p>
    
                <select class="form-select form-select-lg mb-3 " aria-label="Large select example" name="tipodocUsuario" id="tipodocUsuario">
                  <option selected>Tipo de documento</option>
                  <option value="Tarjeta de identidad">Tarjeta de identidad</option>
                  <option value="Cedula de ciudadania">Cedula de ciudadania</option>
                  <option value="Cedula de extranjeria">Cedula de extranjeria</option>
                  <option value="Pasaporte">Pasaporte</option>
                </select>

                <p></p>
    
                <input type="number" class="form-control input " placeholder="Numeró de documento" name="documentoUsuario" id="documentoUsuario" ></input>
                
                <p></p>
    
                <input type="number" class="form-control input" placeholder="Celular Usuario" name="celularUsuario" id="celularUsuario"></input>
                
                <p></p>
    
                <input type="text" class="form-control input" placeholder="Rol" name="rol" id="rol" ></input>
                <p></p>
    
                <p></p>
                <input type="text" class="form-control input" placeholder="Usuario" name="usuario" id="usuario" ></input>
    
                <p></p>
    
                <p></p>
    
                <input type="email" class="form-control input" placeholder="Correo" name="correo" id="correo"></input>
                
    
                <p></p>
                
                <input type="password" class="form-control input" placeholder="Contraseña" name="clave" id="clave"></input>
    
                
                <p></p>
                <input type="submit" class="btn btn-primary boton" name="accion" value="registrar"></input>
    
                <p></p>
    
                <a class="vinculo" href="registrar.html">Olvido su contraseña?</a>
    
        </form>
        </div>
    </div>
    </div>
    <div class="col-sm"></div>
    </div>

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

    <!--footer-->
    <footer class="py-3 ">
      <ul class="nav justify-content-center border-bottom pb-3 mb-3 ">
        <li class="nav-item"><a href="../vistas/index.html" class="nav-link px-2 text-body-secondary">Home</a></li>
        <li class="nav-item"><a href="https://oferta.senasofiaplus.edu.co/sofia-oferta/" class="nav-link px-2 text-body-secondary">Sena Sofia Plus</a></li>
        <li class="nav-item"><a href="https://sena.territorio.la/index.php?login=true" class="nav-link px-2 text-body-secondary">Territorium</a></li>
        <li class="nav-item"><a href="https://web.facebook.com/SENA/?locale=es_LA&_rdc=1&_rdr" class="nav-link px-2 text-body-secondary">Facebook</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary"></a></li>
      </ul>
      <p class="text-center text-body-secondary">&copy; 2023 Company, Inc</p>
    </footer>

</body>
</html>