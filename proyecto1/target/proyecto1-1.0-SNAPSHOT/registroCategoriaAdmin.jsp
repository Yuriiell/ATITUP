<%-- 
    Document   : registroCategoriaAdmin
    Created on : 26 abr 2023, 02:03:28
    Author     : yosof
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro de Categoría</title>
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
      input[type=text] {
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
    </style>
  </head>
  <body>
    <div class="form-container">
      <h2>Registro de Categoría</h2>
      <form method="POST" action="SvRegistroCategoriaAdmin" onsubmit="return validar()">
        <label for="nombre-categoria">Seleccione el curso al que pertenece:</label>
        <select name="curso">
                        <optgroup label="Bloque 0">
                            <option value="CI0200">CI0200 - EXAMEN DIAGNÓSTICO</option>
                            <option value="CI0202">CI0202 - INGLÉS BÁSICO</option>
                            <option value="MA0101">MA0101 - MATEMÁTICA GENERAL</option>
                        </optgroup>
                        <optgroup label="Bloque 1">
                            <option value="CI1106">CI1106 - COMUNICACIÓN ESCRITA</option>
                            <option value="MA1403">MA1403 - MATEMÁTICA DISCRETA</option>
                            <option value="SE1100">SE1100 - ACTIVIDAD CULTURAL I</option>
                            <option value="TI1102">TI1102 - INFORMACIÓN CONTABLE</option>
                            <option value="TI1103">TI1103 - MODELOS ORGANIZACIONALES Y GESTIÓN DE TI</option>
                            <option value="TI1400">TI1400 - INTRODUCCIÓN A LA PROGRAMACIÓN</option>
                            <option value="TI1401">TI1401 - TALLER DE PROGRAMACIÓN</option>
                        </optgroup>
                        <optgroup label="Bloque 2">
                            <option value="CI1107">CI1107 - COMUNICACIÓN ORAL</option>
                            <option value="FH1000">FH1000 - CENTROS DE FORMACIÓN HUMANÍSTICA</option>
                            <option value="MA1102">MA1102 - CÁLCULO DIFERENCIAL E INTEGRAL</option>
                            <option value="SE1200">SE1200 - ACTIVIDAD DEPORTIVA I</option>
                            <option value="TI1201">TI1201 - COMPORTAMIENTO ORGANIZACIONAL Y TALENTO HUMANO</option>
                            <option value="TI2402">TI2402 - ALGORITMOS Y ESTRUCTURAS DE DATOS</option>
                            <option value="TI2404">TI2404 - ORGANIZACIÓN Y ARQUITECTURA DE COMPUTADORAS</option>
                            <option value="TI4500">TI4500 - INGENIERÍA DE REQUERIMIENTOS</option>
                          </optgroup>
                        <optgroup label="Bloque 3">
                            <option value="CI3400">CI3400 - INGLÉS 1 (ATI)</option>
                            <option value="MA1103">MA1103 - CÁLCULO Y ALGEBRA LINEAL</option>
                            <option value="SE1400">SE1400 - ACTIVIDAD CULTURAL-DEPORTIVA</option>
                            <option value="TI2800">TI2800 - ADMINISTRACIÓN DE PROYECTOS I</option>
                            <option value="TI3103">TI3103 - COSTOS EN AMBIENTES INFORMÁTICOS</option>
                            <option value="TI3600">TI3600 - BASES DE DATOS</option>
                            <option value="TI4200">TI4200 - ECONOMÍA</option>
                        </optgroup>
                        <optgroup label="Bloque 4">
                            <option value="CI4401">INGLÉS II (ATI)</option>
                            <option value="MA2404">PROBABILIDADES</option>
                            <option value="TI2201">PROGRAMACIÓN ORIENTADA A OBJETOS</option>
                            <option value="TI3801">ADMINISTRACIÓN DE PROYECTOS II</option>
                            <option value="TI4101">PLANIFICACIÓN Y PRESUPUESTO</option>
                            <option value="TI4601">BASES DE DATOS AVANZADOS</option>
                        </optgroup>
                        <optgroup label="Bloque 5">
                            <option value="CS3404">CS3404 - SEMINARIO DE ÉTICA PARA LA INGENIERÍA</option>
                            <option value="TI5100">TI5100 - GESTIÓN Y TOMA DE DECISIONES FINANCIERAS</option>
                            <option value="TI5501">TI5501 - DISEÑO DE SOFTWARE</option>
                            <option value="MA3405">MA3405 - ESTADÍSTICA</option>
                            <option value="TI3500">TI3500 - MERCADEO EN LA ERA DIGITAL</option>
                            <option value="TI3501">TI3501 - FUNDAMENTOS DE SISTEMAS OPERATIVOS</option>
                        </optgroup>
                        <optgroup label="Bloque 6">
                            <option value="CS2304">CS2304 - DERECHO LABORAL</option>
                            <option value="TI3601">TI3601 - MODELO DE TOMA DE DECISIONES</option>
                            <option value="TI3602">TI3602 - PRODUCCIÓN, LOGÍSTICA Y CALIDAD</option>
                            <option value="TI3603">TI3603 - CALIDAD EN SISTEMAS DE INFORMACIÓN</option>
                            <option value="TI3604">TI3604 - FUNDAMENTOS DE REDES</option>
                            <option value="TI6900">TI6900 - INTELIGENCIA DE NEGOCIOS</option>
                            <option value="TI9003">TI9003 - COMPUTACIÓN Y SOCIEDAD</option>
                        </optgroup>
                        <optgroup label="Bloque 7">
                            <option value="CS3405">CS3405 - DERECHO INFORMÁTICO Y MERCANTIL</option>
                            <option value="TI4701">TI4701 - SEGURIDAD EN SISTEMAS DE INFORMACIÓN</option>
                            <option value="TI5000">TI5000 - ELECTIVA 1</option>
                            <option value="TI7503">TI7503 - ARQUITECTURA DE APLICACIONES</option>
                            <option value="TI7901">TI7901 - NEGOCIOS ELECTRÓNICOS</option>
                            <option value="TI8109">TI8109 - FORMULACIÓN Y EVALUACIÓN DE PROYECTOS DE TI</option>
                        </optgroup>
                        <optgroup label="Bloque 8">
                            <option value="TI6000">TI6000 - ELECTIVA 2</option>
                            <option value="TI8902">TI8902 - ADQUISICIÓN DE TI</option>
                            <option value="TI8904">TI8904 - ADMINISTRACIÓN DE PROCESOS DE NEGOCIOS</option>
                            <option value="TI8905">TI8905 - ADMINISTRACIÓN DE SERVICIOS DE TECNOLOGÍAS DE INFORMACIÓN I</option>
                            <option value="TI9805">TI9805 - AUDITORÍA DE TI</option>
                            <option value="TI9905">TI9905 - SISTEMAS DE INFORMACIÓN EMPRESARIAL</option>
                        </optgroup>
                        <optgroup label="Bloque 9">
                            <option value="TI5901">TI5901 - ESPÍRITU EMPRENDEDOR Y CREACIÓN DE EMPRESAS</option>
                            <option value="TI5902">TI5902 - ANALÍTICA EMPRESARIAL</option>
                            <option value="TI5903">TI5903 - PLANIFICACIÓN ESTRATÉGICA DE TECNOLOGÍA DE INFORMACIÓN</option>
                            <option value="TI5904">TI5904 - INVESTIGACIÓN EN SISTEMAS DE INFORMACIÓN</option>
                            <option value="TI5905">TI5905 - FUNDAMENTOS DE ARQUITECTURA EMPRESARIAL</option>
                            <option value="TI9004">TI9004 - ADMINISTRACIÓN DE SERVICIOS DE TECNOLOGÍAS DE INFORMACIÓN II</option>
                        </optgroup>
                        <optgroup label="Bloque 10">
                            <option value="TI9000">TI9000 - TRABAJO FINAL DE GRADUACIÓN</option>
                        </optgroup>

                    </select>
        <h2> </h2>
        <label for="nombre-categoria">Ingrese el nombre de la categoría</label>
        <input type="text" id="nombre-categoria" name="nombre-categoria" required>
        <button type="submit">Registrar Categoría</button>
      </form>
      <button type="button" onclick="history.back()">Atrás</button>
    </div>
    <script>
      function validar() {
        const nombreCategoria = document.getElementById("nombre-categoria").value;
        if (!nombreCategoria || nombreCategoria.trim() === "") {
          alert("Ingrese un nombre de categoría válido");
          return false;
        }
        return true;
      }
    </script>
  </body>
</html>