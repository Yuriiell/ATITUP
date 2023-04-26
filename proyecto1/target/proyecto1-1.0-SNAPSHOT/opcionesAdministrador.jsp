<%-- 
    Document   : opcionesAdministrador
    Created on : 26 abr 2023, 01:58:33
    Author     : yosof
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menú Principal Modo Administrador</title>
    <style>
      body {
        background-color: #f1f1f1; /* color de fondo deseado */
      }
      .form-container {
        margin: 50px auto;
        width: 50%;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75);
      }
      h2 {
        text-align: center;
        color: #333;
      }
      label {
        display: block;
        margin-bottom: 10px;
        color: #666;
      }
      button {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        cursor: pointer;
      }
      button[type="submit"] {
        background-color: #008CBA;
        color: #fff;
      }
      button[type="submit"]:hover {
        background-color: #005D7B;
      }
      .back-button {
         position: fixed;
         bottom: 20px;
         right: 20px;
      }
    </style>
  </head>
  <body>
    <div class="form-container">
      <h2>Menú Principal Modo Administrador</h2>
        <div class="form-group">
          <button type="submit" onclick="window.location.href='catalogoPreguntasAdmin.jsp'">Catálogo de Preguntas</button>
          <button type="submit" onclick="window.location.href='registroCategoriaAdmin.jsp'">Registrar Categorias</button>
          <button type="submit" onclick="window.location.href='registroItemAdmin.jsp'">Registrar Item</button>
        </div>
        <button type="button" onclick="history.back()">Atrás</button> <!-- cuando se redireccione la pagina principal a esta el botón de atrás va a servir -->
    </div>
  </body>
</html>
