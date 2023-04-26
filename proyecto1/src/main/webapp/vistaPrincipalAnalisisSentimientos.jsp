<%-- 
    Document   : analisisSentimientos
    Created on : 25 abr 2023, 22:21:48
    Author     : Eilyn Picado
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Analisis de Sentimientos</title>
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
        text-align: center; /* centrar contenido horizontalmente */
      }
      h2 {
        text-align: center;
        color: #333;
      }
      input[type="submit"] {
        background-color: #008CBA;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        padding: 10px 20px;
        margin-top: 20px;
      }
      input[type="submit"]:hover {
        background-color: #005D7B;
      }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Seleccione una opción:</h2>
        <br>
       
            <form method="post" action="realizarAnalisisCategoria.jsp">
            <input type="submit" name="Análisis de una categoría" value="Análisis de una categoría"><br><br>
            </form>
            
            <form method="post" action="realizarAnalisisItem.jsp">
            <input type="submit" name="Análisis de un ítem" value="Análisis de un ítem"><br><br>
            </form>
        
            <form method="post" action="realizarAnalisisComentario.jsp">
            <input type="submit" name="Análisis de un comentario de un ítem en una categoría" value="Análisis de un comentario de un ítem en una categoría"><br><br>
            </form>
        
           
            <button type="button" onclick="history.back()">Atrás</button>
    </div>
</body>
</html>

