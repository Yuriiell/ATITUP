<%-- 
    Document   : verCursoAdmin
    Created on : 26 abr 2023, 02:02:54
    Author     : yosof
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Catálogo de Preguntas</title>
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
      table {
        margin: 20px auto;
        border-collapse: collapse;
        width: 100%;
      }
      th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
      }
      th {
        width: 30%;
      }
    </style>
  </head>
  <body>
    <div class="form-container">
      <h2>Catálogo de Preguntas</h2>
      <table>
        <tr>
          <th>Categoría</th>
          <th>Pregunta</th>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
      </table>
      <button type="button" onclick="history.back()">Atrás</button> <!-- cuando se redireccione la pagina principal a esta el botón de atrás va a servir -->
    </div>
  </body>
</html>
