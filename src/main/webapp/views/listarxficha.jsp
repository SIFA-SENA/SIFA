<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/c628e42b8b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/gestionAprendiz.css">
    <title>Aprendices</title>
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



      <CENTER><h1 style="margin-top: 2%; margin-bottom: 3%; font-size: 60px;  color: green;">GESTIÓN DE APRENDICES!</h1></CENTER>
      <div class="navbar">
        <a href="aprendiz?accion=FormRegistrarA" class="btn btn-success btn-lg active boton" role="button" aria-pressed="true">Registrar Aprendiz</a>
        <a style="margin-left: 1%;" href="#" class="btn btn-success btn-lg active boton" role="button" aria-pressed="true">Aprendices Inactivos</a>
        <form class="form">
          <input type="search" name="txtBuscar" class="form-control">
          <input type="submit" name="accion" value="Buscar" class="btn btn-outline-success"> 
        </form>
    </div>
      

      <div class="row" >
        <div class="col-sm tal" >
          <table class="table">
            <thead>
              <tr>
                <th scope="col">Id Aprendiz</th>
                <th scope="col">Nombre Aprendiz</th>
                <th scope="col">Tipo Documento</th>
                <th scope="col">Número Documento</th>
                <th scope="col">Celular</th>
                <th scope="col">Correo</th>
                <th scope="col">Fecha Nacimiento</th>
                <th scope="col">Estado</th>
                <th scope="col">Observaciones</th>
                <th scope="col">Accion</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="aprendiz" items="${aprendiz}" >    
              <tr>
                <th scope="row">${aprendiz.getIdAprendiz()}</th>
                <td>${aprendiz.getNombreAprendiz()}</td>
                <td>${aprendiz.getTipodocAprendiz()}</td>
                <td>${aprendiz.getDocumentoAprendiz()}</td>
                <td>${aprendiz.getCelularAprendiz()}</td>
                <td>${aprendiz.getCorreoAprendiz()}</td>
                <td>${aprendiz.getFechaNacimientoAprendiz()}</td>
                <td>${aprendiz.getEstadoAprendiz()}</td>
                <td>${aprendiz.getObservaciones()}</td>
                <td>
                    <a href="aprendiz?accion=editarA&id=${aprendiz.getIdAprendiz()}" class="btn btn-secondary">Editar<i class="fa-solid fa-square-pen"></i></a>
                        
                  
                </td>
              </tr>
            </c:forEach> 

    
            </tbody>
          </table>
    
        </div>
      </div>
      



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