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
        <div class="row" style="margin: 15%; margin-top: 0%; margin-bottom: 0%;">
          <CENTER><h1 style="margin-top: 2%; margin-bottom: 2%; font-size: 60px; color: green;">REGISTRAR FICHAS!</h1></CENTER>
          <div class="col-sm">
            <div class="col-sm" >
              <div class="col-sm ficha1">
                  <div class="card form">
                      <div class="card-body">
                        <form class="container-fluid " action="ficha" method="post">
                            
                          <input class="form-control" type="number" placeholder="Número ficha" name="idFicha" id="idFIcha">
                          <p></p>

                          <input class="form-control" type="text" placeholder="Programa Formación" name="programaFormacion" id="programaFormacion">
                          <p></p>

                          <select class="form-select" aria-label="Area de formación" name="areaFormacion" id="areaFormacion" >
                            <option selected>Area de formación</option>
                            <option value="Teleinformatica">Teleinformatica</option>
                            <option value="Industrias creativas">Industrias creativas</option>
                            <option value="Mercadeo">Mercadeo</option>
                          </select>
                          <p></p>

                          <select class="form-select" aria-label="Lugar de formación" name="lugarFormacion" id="lugarFormacion">
                            <option selected>Lugar de formación</option>
                            <option value="Sede Fontibón">Sede Fontibón</option>
                            <option value="Sede calle 52">Sede calle 52</option>
                          </select>
                          <p></p>

                          <select class="form-select" aria-label="Estado Ficha" name="estadoFicha" id="estadoFicha">
                            <option selected>Estado Ficha</option>
                            <option value="Etapa Lectiva">Etapa Lectiva</option>
                            <option value="Etapa Productiva">Etapa Productiva</option>
                            <option value="Formación terminada">Formación terminada</option>
                          </select>
                          <p></p>

                          <center><button type="submit" class="btn btn-success" name="accion" value="registrarFicha">Registrar</button></center>

                    </form>
                      </div>
                  </div>
                  </div>
  
          </div>
  
          </div>
          <div class="col-sm ficha2" >

            <div class="card text">
              <h1 style="color: white; margin-left: 32%;">FICHAS</h1>
              <p></p>
              <h3 style="color: white; text-align: center; margin: 5%; padding: 5%; margin-bottom: 13%;">Aqui registraras las fichas de nuestro hambiente de formación, ten cuidado que la información sea correcta...</h3>
            </div>
            

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