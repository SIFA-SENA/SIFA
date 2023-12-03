<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../css/gestionAprendiz.css">
    <link rel="stylesheet" href="../css/dashboard.css">
    <title>Document</title>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light  naveg">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"> 
            
          </span>
        </button>
        <img class="navegacion1" src="../img/logo_sena.jpg" width="50px" height="50px">
        <a class="navbar-brand navegacion2" href="../vistas/index.html">SIFA</a>
      
        <div class="collapse navbar-collapse navegacion" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li>
              <a class="nav-link" href="gestionUsuarios.html">Usuarios</a>
            </li>
            <li>
              <a class="nav-link" href="../vistas/gestionFichas.html">Fichas</a>
          </li>
            <li>
                <a href="index.html"><img class="navegacion1" src="../img/exit.png" width="20px" height="20px"></a>
            </li>
          </ul>
        </div>
      </nav>   


      <div class="row">
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
                    <li class="li"><a href="#" class="as">Registrar Administrador</a></li>
                    <li class="li"><a href="#" class="as">Registrar Usuario</a></li>
                    <li class="li"><a href="#" class="as">Consultar Usuario</a></li>
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
                            <li class="li"><a href="#" class="as">Registrar Ficha</a></li>
                            <li class="li"><a href="#" class="as">Consultar Fichas</a></li>    
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
                        <li class="li"><a href="#" class="as">Registrar Aprendiz</a></li>  
                    </div>
                  </div>
                </div>
              </div>
            <br>
        </div>
      </div>

        <nav class="col-sm" style="background-color: aliceblue; margin: 20%; margin-top: 3%;margin-bottom: 3%; padding-top: 15%; padding-bottom: 15%;">

            <center><h1>Cargar tus archivos aqui...</h1></center>
            <nav class="row">
                <nav class="col-sm" >
                    <form action="aprendiz" method="post" enctype="multipart/form-data">
                        <input type="file" name="excelFile" accept=".xls, .xlsx" required />
                        <input type="submit" name="accion" value="Excel">
                    </form>
            </nav>

        </nav>
      </nav>
    
</body>