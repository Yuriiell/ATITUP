<%-- 
    Document   : pdfItem
    Created on : 26 abr 2023, 2:10:52
    Author     : Eilyn Picado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>PDF ITEM</title>
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
      select {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
      }
      ul {
        list-style: none;
        margin: 0;
        padding: 0;
      }
      li {
        padding: 10px;
        border: 1px solid #ccc;
        margin-bottom: 10px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease-in-out;
      }
      li:hover {
        background-color: #f1f1f1;
      }
      .pdf-button {
        background-color: #008CBA;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        padding: 10px 20px;
        margin-top: 20px;
        display: block;
        margin: 0 auto;
      }
      .pdf-button:hover {
        background-color: #005D7B;
      }
    </style>
  </head>
  <body>
    <div class="form-container">
        <h2>Consultar ítems</h2>
        <form method="POST" action="SvGenerarDocumentoItem">
            <div class="form-group">
                <label for="item">Selecciona el ítem:</label>
                <select id="item" name="item">
                    <!-- Se agregan las opciones de la base de datos -->       
                </select>
            </div>
            <button class="pdf-button" type="submit">Generar PDF</button>
            <button type="button" onclick="history.back()">Atrás</button>
      </form>
    </div>
  </body>
</html>

