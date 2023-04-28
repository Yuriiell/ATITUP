<%-- 
    Document   : index
    Created on : 24 abr 2023, 10:50:20
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Selección de Modo</title>
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
    </style>
  </head>
  <body>
    <div class="form-container">
      <h2>Selección de Modo</h2>
        <div class="form-group">
          <label>Selecciona el modo de uso:</label>
          <button type="submit" onclick="window.location.href='ingresarCorreoAdmin.jsp'">Modo Administrador</button>
          <button type="submit" onclick="window.location.href='ingresarCorreoUsuario.jsp'">Modo Usuario</button>
          <button type="submit" onclick="window.location.href='traducir.jsp'">Traductor</button>
        </div>
    </div>
  </body>
</html>
