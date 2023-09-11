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
    <title>SIFA-editar aprendiz</title>
</head>
<body>
    <!--HEADER-->
    <header class="header1">
        <div class="logo">
            <img src="img/logo_sena.jpeg" width="80px">
        </div>
        <nav>
            <ul class="title">
                <h1 class="h1">GESTION DE APRENDIZ </h1>
            </ul>
        </nav>
    </header>

    <header class="navegation">
        <div class="options">
            <h4><a href="ficha?accion=listar">Consultar Ficha</a></h4>
            <h4><a href="#crearFicha">Crear Ficha</a></h4>
            <h4><a href="#">Ayuda y Soporte</a></h4>
        </div>
            <h4 class="ingresar"><a href="index.jsp">Salir</a></h4>
            <a href="index.jsp"><i class="fa-solid fa-right-to-bracket"></i></i></a>
    </header>

  

<h1 class="title" id="crearFicha">REGISTRAR FICHA</h1>

<form action="aprendiz" method="POST" class="formularioRgeistro">
<div class="formularioRgeistro ">
    <div>
        <div class="registrarFicha">
            <form class="registro" method="POST">
                <h2 id="Ficha">REGISTRAR FICHA! </h2>
                
                <div class="program">
                    <label> Nombre aprendiz </label><p></p>
                    <input type="text" name="nombreAprendiz" id="nombreAprendiz" value="${aprendiz.nombreAprendiz}" required>
                </div>
                <div class="area">
                    <label> Tipo documento aprendiz</label><p></p>
                    <input type="text" name="tipodocAprendiz" id="tipodocAprendiz" value="${aprendiz.tipodocAprendiz}" required>
                </div>
                <div class="sede">
                    <label> Documento aprendiz</label><p></p>
                    <input type="text" name="documentoAprendiz" id="documentoAprendiz" value="${aprendiz.documentoAprendiz}" required>
                </div>
                <div class="sede">
                    <label> Celular aprendiz</label><p></p>
                    <input type="text" name="celularAprendiz" id="celularAprendiz" value="${aprendiz.celularAprendiz}" required>
                </div>
                <div class="sede">
                    <label> Correo aprendiz</label><p></p>
                    <input type="email" name="correoAprendiz" id="correoAprendiz" value="${aprendiz.correoAprendiz}" required>
                </div>
                <div class="sede">
                    <label> Fecha nacimiento aprendiz</label><p></p>
                    <input type="text" name="fechaNacimientoAprendiz" id="fechaNacimientoAprendiz" value="${aprendiz.fechaNacimientoAprendiz}" required>
                </div>
                <div class="sede">
                    <label> Estado aprendiz</label><p></p>
                    <input type="text" name="estadoAprendiz" id="estadoAprendiz" value="${aprendiz.estadoAprendiz}" required>
                </div>
                
                <div class="sede">
                    <label> Observaciones</label><p></p>
                    <input type="text" name="observaciones" id="observaciones"  value="${aprendiz.observaciones}" required>
                </div>
    
                <div class="sede">
                    <label> idFicha</label><p></p>
                    
                    <input type="text" name="idFicha" id="idFicha" value="${aprendiz.getFichaVo().getIdFicha()}" required>
               
                </div>
        
            

            <input type="submit" name="accion" value="actualizarAprendiz">
        </div>
    </form>
