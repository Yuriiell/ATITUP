<%-- 
    Document   : consultarTop
    Created on : 25 abr 2023, 17:30:54
    Author     : Eilyn Picado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Consulta Top</title>
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
      input[type="number"], select {
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
      }
    </style>
  </head>
  <body>
    <div class="form-container">
      <h2>Consulta Top</h2>
      <form>
        <div class="form-group">
          <label for="top">Top:</label>
          <input type="number" id="top" name="top" min="1" max="100" placeholder="Ingrese el número de top que desea" required>
          <!-- El atributo "required" obliga al usuario a ingresar un valor en el campo -->  
        </div>
        <div class="form-group">
          <label for="tipo">Tipo de información:</label>
          <select id="tipo" name="tipo">
            <option value="respuestas">Respuestas</option>
            <option value="ejemplos">Ejemplos</option>
            <option value="ambos">Ambos</option>
          </select>
        </div>
        <div class="form-group">
          <label for="fuente">Fuente de información:</label>
          <select id="fuente" name="fuente">
            <option value="admin">Administrador</option>
            <option value="chatgpt">ChatGPT</option>
            <option value="ambos">Ambos</option>
          </select>
        </div>
          <button type="submit">TOP ITEMS</button> <<!-- hace la consulta para el top de items -->
        <button type="submit">TOP CATEGORIAS</button><<!-- hace la consulta para el top de categorías -->
        <br>
        <br>
        <div class="form-group">
              <label for="ejemplos-admi">TOP:</label>
              <textarea class="scrollable"></textarea>
              <!--Aquí va elresultado del top-->
          </div>
        <button type="button" onclick="history.back()">Atrás</button>
      </form>
    </div>
  </body>
</html>

