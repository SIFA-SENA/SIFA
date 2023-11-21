<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="shortcut icon" href="img/logo_sena.jpg" />
    <link rel="stylesheet" href="css/registrarFichas.css">
    <link rel="stylesheet" href="css/dashboard.css">
    <title>SIFA-Registar ficha</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light  naveg">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"> 
            
          </span>
        </button>
        <img class="navegacion1" src="img/logo_sena.jpg" width="50px" height="50px">
        <a class="navbar-brand navegacion2" href="index.jsp">SIFA</a>
      
        <div class="collapse navbar-collapse navegacion" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li>
              <a class="nav-link" href="usuario?accion=consultar">Usuarios</a>
            </li>
            <li>
              <a class="nav-link" href="ficha?accion=listar">Fichas</a>
          </li>
            <li>
                <a href="index.jsp"><img class="navegacion1" src="img/exit.png" width="20px" height="20px"></a>
            </li>
          </ul>
        </div>
      </nav>   

     

    <!--body-->
    <div class="row" >
      <div class="col-sm-2 dashboard o">
        <div class="col-sm b  ">
            <strong><h3>Administrador</h3></strong>
        </div>
        <hr>

        <div class="accordion" id="accordionExample">
            <div class="accordion-item aco">
              <h2 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                  Usuarios
                </button>
              </h2>
              <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                <li class="li"><a href="usuario?accion=abrirFormA" class="as">Registrar Usuario</a></li>
                <li class="li"><a href="usuario?accion=consultar" class="as">Consultar Usuario</a></li>
                </div>
              </div>
            </div>
            <div class="accordion-item aco">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  Fichas
                </button>
              </h2>
              <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="accordion-body">
                        <li class="li"><a href="ficha?accion=abrirForm" class="as">Registrar Ficha</a></li>
                        <li class="li"><a href="ficha?accion=listar" class="as">Consultar Fichas</a></li>    
                    </div>
                </div>
              </div>
            </div>
            <div class="accordion-item aco">
              <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                  Aprendiz
                </button>
              </h2>
              <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <li class="li"><a href="aprendiz?accion=FormRegistrarA" class="as">Registrar Aprendiz</a></li>  
                </div>
              </div>
            </div>
          </div>
        <br>
    </div>
      <div class="col-sm">
        <div class="row" style="margin: 10%; margin-top: 0%; margin-bottom: 0%;" >
          <CENTER><h1 style="margin-top: 2%; margin-bottom: 2%; font-size: 60px; color: green;">REGISTRAR  USUARIO!</h1></CENTER>
          <div class="col-sm">
            <div class="col-sm" >
              <div class="col-sm ficha1">
                  <div class="card form">
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
              
                          <select class="form-select form-select-lg mb-3 " aria-label="Large select example" name="rol" id="rol">
                            <option selected>Rol</option>
                            <option value="Instructor">Instructor</option>
                            <option value="Administrador">Administrador</option>
                          </select>
                          <p></p>
              
                          <p></p>
                          <input type="text" class="form-control input" placeholder="Usuario" name="usuario" id="usuario" ></input>
              
                          <p></p>
              
                          <p></p>
              
                          <input type="email" class="form-control input" placeholder="Correo" name="correo" id="correo"></input>
                          
              
                          <p></p>
                          
                          <input type="password" class="form-control input" placeholder="Contraseña" name="clave" id="clave"></input>
              
                          
                          <p></p>
                          <input type="submit" class="btn btn-primary boton" name="accion" value="registrarA"></input>
              
                          <p></p>
              
                          <a class="vinculo" href="registrar.html">Olvido su contraseña?</a>
              
                  </form>
                      </div>
                  </div>
                  </div>
  
          </div>
  
          </div>
          <div class="col-sm ficha2" >

            <div class="card text">
              <h1 style="color: white; margin-left: 32%;">Usuario</h1>
              <p></p>
              <h3 style="color: white; text-align: center; margin: 5%; padding: 5%; margin-bottom: 85.6%;">Registra usuarios a tu manera, dependiendo de tu rol dentro de nuestro sistema podras tener diferentes permisos que hacen de nuestro sistema uno mejor   </h3>
              
            </div>
            

          </div>
        </div>

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