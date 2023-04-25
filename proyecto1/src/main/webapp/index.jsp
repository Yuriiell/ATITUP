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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del item</h1>
        <form action="SvItem" method="POST">
            <p><label>Prompt:</label> <input type="text" name="prompt"> </p>
            <p><label>Respuesta:</label> <input type="text" name="respuesta"> </p>
            <p><label>Fuente:</label> <input type="text" name="fuente"> </p>
            <p><label>Ejemplo:</label> <input type="text" name="ejemplo"> </p>
            <p><label>Fuente ejemplo:</label> <input type="text" name="fuenteEjemplo"> </p>
            <button type="submit">Enviar</button>
        </form>
    </body>
</html>
