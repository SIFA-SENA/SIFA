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
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <title>LOG IN-SIFA</title>
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
              <a class="nav-link" href="usuario?accion=abrirForm">Registrar</a>
            </li>
            <li>
            <a href="usuario?accion=abrirForm"><img class="navegacion1" src="img/agregar-usuario.png" width="20px" height="20px" ></a>
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
        <div class="card-header titulo">Iniciar Sesion</div>
        <div class="card-body">

    <form class="container-fluid needs-validation " action="usuario" method="post" novalidate>

            
            <input type="text"  name="usuario" id="usuario" class="form-control input" placeholder="Usuario" required>

            <div class="valid-feedback">
              
            </div>
            
            <div class="invalid-feedback">
              <h6>Es necesario un Usuario valido</h6>
            </div>

            <p></p>
            <input type="password" name="clave" id="clave" class="form-control input" placeholder="Contraseña" required>

            <div class="valid-feedback">
              
            </div>

            <div class="invalid-feedback">
              <h6>Es necesario una contraseña valida</h6>
            </div>

            <p></p>
            <input type="submit" class="btn btn-primary boton" name="accion" value="iniciarSesionl" >

            <p></p>


            <% String error = (String)request.getAttribute("error"); %>
            <% if (error != null) { %>
            <div class="alert alert-danger">
            <%= error %>
            </div>
            <% } %>

            <!-- <a class="vinculo" href="recuperar.html">Olvido su contraseña?</a>
 -->
    </form>

    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
'use strict'

// Fetch all the forms we want to apply custom Bootstrap validation styles to
const forms = document.querySelectorAll('.needs-validation')

// Loop over them and prevent submission
Array.from(forms).forEach(form => {
form.addEventListener('submit', event => {
  if (!form.checkValidity()) {
    event.preventDefault()
    event.stopPropagation()
  }

  form.classList.add('was-validated')
}, false)
})
})()
    </script>

    
        </div>
    </div>
    </div>
    <div class="col-sm"></div>
    </div>


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