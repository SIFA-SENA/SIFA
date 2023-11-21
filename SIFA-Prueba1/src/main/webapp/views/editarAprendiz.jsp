<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="shortcut icon" href="img/logo_sena.jpg" />
    <link rel="stylesheet" href="css/registrarFichas.css">
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

      <CENTER><h1 style="margin-top: 2%; margin-bottom: 2%; font-size: 60px; color: green;">ACTUALIZAR APRENDIZ!</h1></CENTER>

    <!--body-->
    <div class="row" >
        
      <div class="col-sm-2">

      </div>

      <div class="col-sm">
        <div class="row" >
          <div class="col-sm">
            <div class="col-sm" >
              <div class="col-sm ficha1">
                  <div class="card form">
                      <div class="card-body">
                          <form class="container-fluid " action="aprendiz" method="POST">
                            
                            <input class="form-control" type="text" placeholder="Nombre"  name="nombreAprendiz" id="nombreAprendiz" value="${aprendiz.nombreAprendiz}" >
                            <p></p>

                            <select class="form-select" aria-label="Tipo Documento" name="tipodocAprendiz" id="tipodocAprendiz" value="${aprendiz.tipodocAprendiz}">
                                <option selected>Tipo Documento</option>
                                <option value="Cedula">Cedula</option>
                                <option value="Tarjeta de identidad">Tarjeta de identidad</option>
                                <option value="Pasaporte">Pasaporte</option>
                              </select>
                            <p></p>
                            
  
                            <input class="form-control" type="number" placeholder="Documento" name="documentoAprendiz" id="documentoAprendiz" value="${aprendiz.documentoAprendiz}" >
                            <p></p>
                            
                            <input class="form-control" type="number" placeholder="Celular" name="celularAprendiz" id="celularAprendiz" value="${aprendiz.celularAprendiz}" >
                            <p></p>
                              
                            <input class="form-control" type="Correo" placeholder="Correo" name="correoAprendiz" id="correoAprendiz" value="${aprendiz.correoAprendiz}">
                            <p></p>

                            <input class="form-control" type="date" placeholder="Fecha Nacimiento" name="fechaNacimientoAprendiz" id="fechaNacimientoAprendiz" value="${aprendiz.fechaNacimientoAprendiz}">
                            <p></p>

  
                            <select class="form-select" aria-label="Estado" name="estadoAprendiz" id="estadoAprendiz">
                              <option selected>Estado</option>
                              <option value="Etapa Lectiva">Etapa Lectiva</option>
                              <option value="Etapa Productiva">Etapa Productiva</option>
                              <option value="Formación terminada">Formación terminada</option>
                            </select>
                            <p></p>

                            <input class="form-control" type="text" placeholder="Observaciones" name="observaciones" id="observaciones" value="${aprendiz.observaciones}">
                            <p></p>

                            <select class="form-select" aria-label="Ficha" name="idFichaFK" id="idFichaFK">
                                <option selected>Ficha</option>
                                <option value="2687386">2687386</option>
                                <option value="2687340">2687340</option>
                                <option value="2687345">2687345</option>
                              </select>
                              <p></p>
  
                            <center><button type="submit" class="btn btn-success" name="accion" value="actualizarAprendiz">Actualizar</button></center>
  
                      </form>
                      </div>
                  </div>
                  </div>
  
          </div>
  
          </div>
          <div class="col-sm ficha2" >

            <div class="card text">
              <h1 style="color: white; margin-left: 32%;">APRENDIZ</h1>
              <p></p>
              
            </div>
            

          </div>
        </div>

      </div>

      <div class="col-sm-2" >

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