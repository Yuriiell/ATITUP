<%-- 
    Document   : registroItemAdmin
    Created on : 26 abr 2023, 02:03:48
    Author     : yosof
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Registro de Ítem</title>
    <style>
      body {
        background-color: #f1f1f1;
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
      select,
      input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
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
      table {
        margin: 20px auto;
        border-collapse: collapse;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 100%;
        max-width: 600px;
      }
      th,
      td {
        padding: 10px;
        text-align: left;
      }
      th:first-child,
      td:first-child {
        width: 30%;
      }
      th:last-child,
      td:last-child {
        width: 70%;
      }
      th,
      td {
        border-bottom: 1px solid #ccc;
      }
    </style>
  </head>
  <body>
    <div class="form-container">
      <h2>Registro de Ítem</h2>
      <label for="categoria">Seleccione la categoría a la que pertenece el ítem</label>
      <select id="categoria" name="categoria">
        <option value="1">Categoría 1</option>
        <option value="2">Categoría 2</option>
        <option value="3">Categoría 3</option>
      </select>
      <label for="pregunta">Ingrese la pregunta generadora</label>
      <input type="text" id="pregunta" name="pregunta" required>
      <label for="respuesta">Ingrese la respuesta</label>
      <input type="text" id="respuesta" name="respuesta" required>
      <button type="button" onclick="consultarChatGPT('respuesta')">Consultar a ChatGPT</button>
      <label for="respuesta-registro">Cuál respuesta desea registrar</label>
      <select id="respuesta-registro" name="respuesta-registro">
        <option value="propia">Respuesta propia</option>
        <option value="chatgpt">Respuesta ChatGPT</option>
        </select>

<div class="form-group">
<label for="ejemploRespuesta">Ingrese el ejemplo de la respuesta</label>
<input type="text" id="ejemploRespuesta" name="ejemploRespuesta" required>
<button type="button" onclick="consultarChatGPT('ejemploRespuesta')">Consultar a ChatGPT</button>
<div class="chatGPT-result">
<!-- Aquí aparecerá el resultado de la consulta a ChatGPT -->
</div>
</div>
<div class="form-group">
<label for="ejemploSelect">Cuál ejemplo asociado a la respuesta desea registrar</label>
<select id="ejemploSelect" name="ejemploSelect">
<option value="ejemploPropio">Ejemplo propio</option>
<option value="ejemploChatGPT">Ejemplo ChatGPT</option>
</select>
</div>
<button type="submit">Registrar Ítem</button>
<button type="button" onclick="history.back()">Atrás</button> <!-- cuando se redireccione la pagina principal a esta el botón de atrás va a servir -->
</div>

  </body>
</html>
