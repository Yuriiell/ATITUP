<%-- 
    Document   : traducir
    Created on : 27 abr 2023, 19:06:47
    Author     : yosof
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Traductor</title>
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
      input[type="email"], select {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
      }
      button[type="submit"] {
        background-color: #008CBA;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        padding: 10px 20px;
        margin-top: 20px;
      }
      button[type="submit"]:hover {
        background-color: #005D7B;
        
     .back-button {
         position: fixed;
         bottom: 20px;
         right: 20px;
  }
</style>
    </style>
  </head>
  <body>
    <div class="form-container">
      <h2>Traductor</h2>
      <form method="POST" action="SvCorreoUsuario">
        <div class="form-group">
          <label for="correo">Ingrese texto a traducir:</label>
          <input type="email" id="traducir" name="traducir"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
          <!-- El atributo "required" obliga al usuario a ingresar un valor en el campo -->  
        </div>
        <div class="form-group">
          <label for="idioma">Selecciona el idioma al que deseas traducir el texto:</label>
          <select id="idioma" name="idioma">
            <option value="es">Español</option>
            <option value="en">Inglés</option>
            <option value="de">Alemán</option>
            <option value="fr">Francés</option>
          </select>
        </div>
        <div class="form-group">
          <label for="correo">Texto traducido:</label>
          <input type="" id="" name="" >
          <!-- El atributo "required" obliga al usuario a ingresar un valor en el campo -->  
        </div>
        <button type="submit">Continuar</button>
        <button type="button" onclick="history.back()">Atrás</button> <!-- cuando se redireccione la pagina principal a esta el botón de atrás va a servir -->
      </form>
    </div>
  </body>
</html>
