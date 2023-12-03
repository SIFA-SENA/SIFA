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
        <div class="row" style="margin: 15%; margin-top: 3%;">
          <CENTER><h1 style="margin-top: 2%; margin-bottom: 2%; font-size: 60px; color: green;">REGISTRAR  APRENDIZ!</h1></CENTER>
          <div class="col-sm">
            <div class="col-sm" >
             
              <div class="col-sm ficha1">
                  <div class="card form">
                      <div class="card-body">
                        <form class="container-fluid needs-validation" action="aprendiz" method="POST" novalidate>
                            
                          <input class="form-control" type="text" placeholder="Nombre"  name="nombreAprendiz" id="nombreAprendiz" required>

                          <div class="valid-feedback">
                            
                          </div>
                          <div class="invalid-feedback">
                            <h6>Por favor ingresa el nombre del aprendiz</h6>
                          </div>

                          <p></p>

                          <select class="form-select" aria-label="Tipo Documento" name="tipodocAprendiz" id="tipodocAprendiz" >
                              <option selected>Tipo Documento</option>
                              <option value="Cedula">Cedula de ciudadania</option>
                              <option value="Tarjeta de identidad">Tarjeta de identidad</option>
                              <option value="Pasaporte">Pasaporte</option>
                            </select>
                          <p></p>
                          

                          <input class="form-control" type="number" placeholder="Documento" name="documentoAprendiz" id="documentoAprendiz"  required>
                          <div class="valid-feedback">
                            
                          </div>
                          <div class="invalid-feedback">
                            <h6>Por favor digite el documento del aprendiz</h6>
                          </div>
                          <p></p>
                          
                          <input class="form-control" type="number" placeholder="Celular" name="celularAprendiz" id="celularAprendiz" required>
                          <div class="valid-feedback">
                            
                          </div>
                          <div class="invalid-feedback">
                            <h6>Por favor digite el número de celular del aprendiz</h6>
                          </div>
                          <p></p>
                            
                          <input class="form-control" type="Correo" placeholder="Correo" name="correoAprendiz" id="correoAprendiz" required>
                          <div class="valid-feedback">
                            
                          </div>
                          <div class="invalid-feedback">
                            <h6>Por favor digite el correo del aprendiz, vergique que cuente con caracteres como @ y .</h6>
                          </div>
                          <p></p>

                          <input class="form-control" type="date" placeholder="Fecha Nacimiento" name="fechaNacimientoAprendiz" id="fechaNacimientoAprendiz" required>
                          <div class="valid-feedback">
                            
                          </div>
                          <div class="invalid-feedback">
                            <h6>Por favor seleccione la fecha de nacimiento del aprendiz</h6>
                          </div>
                          <p></p>


                          <select class="form-select" aria-label="Estado" name="estadoAprendiz" id="estadoAprendiz">
                            <option selected>Estado</option>
                            <option value="Etapa Lectiva">Etapa Lectiva</option>
                            <option value="Etapa Productiva">Etapa Productiva</option>
                            <option value="Formación terminada">Formación terminada</option>
                            <option value="Desercion">Deserción</option>
                            <option value="Aplazamiento">Aplazamiento</option>
                          </select>
                          <p></p>

                          <input class="form-control" type="text" placeholder="Observaciones" name="observaciones" id="observaciones" required>
                          <div class="valid-feedback">
                            
                          </div>
                          <div class="invalid-feedback">
                            <h6>Escriba las observaciones sobre el aprendiz, en caso de que no cuente con una escriba "No"</h6>
                          </div>
                          <p></p>

                          <select class="form-select" aria-label="Ficha" name="idFichaFK" id="idFichaFK">
                              <option selected>Ficha</option>
                              <option value="2687386">2687386</option>
                              <option value="2687340">2687340</option>
                              <option value="2687345">2687345</option>
                            </select>
                            <p></p>

                          <center><button type="submit" class="btn btn-success" name="accion" value="registrarAprendiz">Registrar</button></center>

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
  
          </div>
  
          </div>
          <div class="col-sm ficha2" >

            <div class="card text">
              <h1 style="color: white; margin-left: 32%;">APRENDIZ</h1>
              <p></p>
              <h2 style="color: white; text-align: center; margin: 5%; padding: 5%; margin-bottom: 21.9%;">El aprendiz es parte vital de nuestro sistema, gracias a el nos movemos y realizamos nuestro trabajo, para cumplir nuestra meta de que adquieran conocimiento </h2>
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