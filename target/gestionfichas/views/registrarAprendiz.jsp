<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/c628e42b8b.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style_gestionFichas.css">
    <link rel="shortcut icon" href="img/logo_sena.jpeg">
    <title>SIFA-Gestion fichas</title>
</head>
<body>
    <!--HEADER-->
    <header class="header1">
        <div class="logo">
            <img src="img/logo_sena.jpeg" width="80px">
        </div>
        <nav>
            <ul class="title">
                <h1 class="h1">GESTIONA TU FICHA </h1>
            </ul>
        </nav>
    </header>

    <header class="navegation">
        <div class="options">
            <h4><a href="ficha?accion=listar">Consultar Ficha</a></h4>
            <h4><a href="ficha?accion=abrirForm">Registrar Ficha</a></h4>
            <h4><a href="usuario?accion=consultar">Consultar Usuarios</a></h4>
            <h4><a href="aprendiz?accion=FormRegistrarA">Registrar Aprendiz</a></h4>
          
        </div>
            <h4 class="ingresar"><a href="index.jsp">Salir</a></h4>
            <a href="index.jsp"><i class="fa-solid fa-right-to-bracket"></i></i></a>
    </header>

  

<h1 class="title" id="crearFicha">APRENDIZ</h1>

<form action="aprendiz" method="POST" class="formularioRgeistro">
<div class="formularioRgeistro ">
    <div>
        <div class="registrarFicha">
            <form class="registro" method="POST">
                <h2 id="Ficha">REGISTRAR </h2>
                
                <div class="program">
                    <label> Nombre aprendiz </label><p></p>
                    <input type="text" name="nombreAprendiz" id="nombreAprendiz" required>
                </div>
              
                <div class="sede">
                    <label> Tipo documento Aprendiz</label><p></p>
                    <select name="tipodocAprendiz" id="tipodocAprendiz" >
                        <option value="Tarjeta identidad">Tarjeta Identidad</option>
                        <option value="Cedula Ciudadania">Cedula Ciudadania</option>
                        <option value="Cedula Extranjeria">Cedula Extranjeria</option>
                        <option value="Pasaporte">Pasaporte</option>
                    </select>
                </div>
                <div class="area">
                    <label> Documento aprendiz</label><p></p>
                    <input type="text" name="documentoAprendiz" id="documentoAprendiz" required>
                </div>
                <div class="sede">
                    <label> Celular aprendiz</label><p></p>
                    <input type="text" name="celularAprendiz" id="celularAprendiz" required>
                </div>
                <div class="sede">
                    <label> Correo aprendiz</label><p></p>
                    <input type="email" name="correoAprendiz" id="correoAprendiz" required>
                </div>
                <div class="sede">
                    <label> Fecha nacimiento aprendiz</label><p></p>
                    <input type="date" name="fechaNacimientoAprendiz" id="fechaNacimientoAprendiz" required>
                </div>
                <div class="sede">
                    <label> Estado Aprendiz</label><p></p>
                    <select name="estadoAprendiz" id="estadoAprendiz" >
                        <option value="En formacion">En formacion</option>
                        <option value="Deserción">Deserción</option>
                        <option value="Formación finalizada">Formación finalizada</option>
                        <option value="Aplazamiento">Aplazamiento</option>
                    </select>
                </div>
                <div class="sede">
                    <label> Observaciones</label><p></p>
                    <input type="text" name="observaciones" id="observaciones" required>
                </div>
                <div class="sede">
                    <label> Id Ficha</label><p></p>
                    <select name="idFichaFK" id="idFichaFK" >
                        <option value="2687386">2687386</option>
                        <option value="2687345">2687345</option>
                    </select>
                </div>
               

            <input type="submit" name="accion" value="registrarAprendiz">
        </div>
    </form>
