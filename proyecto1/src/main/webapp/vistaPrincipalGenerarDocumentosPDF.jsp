<%-- 
    Document   : generarPDFs
    Created on : 25 abr 2023, 23:08:27
    Author     : Eilyn Picado
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Generar PDF</title>
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
            <form method="POST" action="SvVistaPrincipalGenerarDocumentos">
            <input type="submit" name="Generar PDF de todo lo registrado" value="Generar PDF de todo lo registrado"><br><br><!-- Genera el pdf de una vez y lo envía -->
            </form>
            <form method="post" action="generarDocumentoCategoria.jsp">
            <input type="submit" name="Generar PDF de todo lo registrado en una categoría" value="Generar PDF de todo lo registrado en una categoría"><br><br>
            </form>
            
            <form method="post" action="generarDocumentoItem.jsp">
            <input type="submit" name="Generar PDF de todo lo registrado en un ítem" value="Generar PDF de todo lo registrado en un ítem"><br><br>
            </form>
            
            <button type="button" onclick="history.back()">Atrás</button>
        </form>
    </div>
</body>
</html>
