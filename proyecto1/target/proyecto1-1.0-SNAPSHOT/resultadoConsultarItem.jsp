<%-- 
    Document   : itemConsultado
    Created on : 25 abr 2023, 16:01:29
    Author     : Eilyn Picado
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Respuestas y Ejemplos</title>
    <style>
      body {
        background-color: #f1f1f1; /* color de fondo deseado */
      }
      .form-container {
          margin: 50px auto;
          width: 80%;
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
      textarea {
          width: 100%;
          height: 80px; 
          padding: 10px;
          margin-bottom: 20px;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
          font-size: 14px;
          resize: none; 
      }
      .scrollable {
          overflow-y: scroll;
        
          
        
      }
      /* Estilos para la sección de valoración con estrellas */
      .rating {
          display: flex;
          flex-direction: row;
          justify-content: center;
          align-items: center;
          margin-bottom: 20px;
      }
      .rating input {
      display: none;
      }
      .rating label {
      font-size: 30px;
      color: #ccc;
      cursor: pointer;
      transition: color 0.25s ease-in-out;
      }
      .rating input:checked ~ label,
      .rating input:checked ~ label ~ label {
          color: #FFC107;
      }
      .rating label:hover,
      .rating label:hover ~ label {
          color: #FFC107;
      }
      /* Estilos para la entrada de comentario */
      .comment {
          display: flex;
          flex-direction: column;
          margin-bottom: 20px;
      }
      .comment label {
          font-size: 18px;
          font-weight: bold;
          color: #666;
          margin-bottom: 5px;
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
      <h2>Respuestas y Ejemplos</h2>
      <form>
          <div class="form-group">
              <label for="respuestas-admi">Respuestas del Administrador:</label>
              <textarea id="respuestas-admi" name="respuestas-admi" class="scrollable"></textarea>
              <!--Aquí van las respuestas generadas por el administrador-->
              
             <div class="form-group">
              <label for="valoracion">Valoración:</label>
              <div class="rating">
                  <input type="radio" id="star5" name="valoracion" value="5">
                  <label for="star5" title="Totalmente Satisfecho">&#9733;</label>
                  
                  <input type="radio" id="star4" name="valoracion" value="4">
                  <label for="star4" title="Satisfecho">&#9733;</label>

                  <input type="radio" id="star3" name="valoracion" value="3">
                  <label for="star3" title="Neutro">&#9733;</label>

                  <input type="radio" id="star2" name="valoracion" value="2">
                  <label for="star2" title="Insatisfecho">&#9733;</label>

                  <input type="radio" id="star1" name="valoracion" value="1">
                  <label for="star1" title="Totalmente Insatisfecho">&#9733;</label>
             </div>
         </div>
          <div class="form-group">
              <label for="comentario">Comentario:</label>
              <textarea id="comentario" name="comentario"></textarea>
          </div>
  
          <button type="submit">Enviar valoración</button>
          <!-- Envia valoración a las respuestas del administrador -->
          
          
          
          
       
          
          <br> <!-- Etiqueta de salto de línea aquí -->
          <br>    
          </div>
          <div class="form-group">
              <label for="ejemplos-admi">Ejemplos del Administrador:</label>
              <textarea id="ejemplos-admi" name="ejemplos-admi" class="scrollable"></textarea>
              <!--Aquí van los ejemplos generados por el administrador-->
              </textarea>
          </div>
          <div class="form-group">
              <label for="valoracion">Valoración:</label>
              <div class="rating">
                  <input type="radio" id="star5" name="valoracion" value="5">
                  <label for="star5" title="Totalmente Satisfecho">&#9733;</label>
                  
                  <input type="radio" id="star4" name="valoracion" value="4">
                  <label for="star4" title="Satisfecho">&#9733;</label>

                  <input type="radio" id="star3" name="valoracion" value="3">
                  <label for="star3" title="Neutro">&#9733;</label>

                  <input type="radio" id="star2" name="valoracion" value="2">
                  <label for="star2" title="Insatisfecho">&#9733;</label>

                  <input type="radio" id="star1" name="valoracion" value="1">
                  <label for="star1" title="Totalmente Insatisfecho">&#9733;</label>
             </div>
         </div>
          <div class="form-group">
              <label for="comentario">Comentario:</label>
              <textarea id="comentario" name="comentario"></textarea>
          </div>
  
          <button type="submit">Enviar valoración</button>
          <!-- Envia valoración a los ejemplos del administrador -->
          
          
          
          <br> <!-- Etiqueta de salto de línea aquí -->
          <br>
          <div class="form-group">
              <div class="form-group">
              <label for="respuestas-chatgpt">Respuestas de ChatGPT:</label>
              <textarea id="respuestas-chatgpt" name="respuestas-chatgpt" class="scrollable"></textarea>
              <!--Aquí van las respuestas generadas por ChatGPT-->
              
              <div class="form-group">
              <label for="valoracion">Valoración:</label>
              <div class="rating">
                  <input type="radio" id="star5" name="valoracion" value="5">
                  <label for="star5" title="Totalmente Satisfecho">&#9733;</label>
                  
                  <input type="radio" id="star4" name="valoracion" value="4">
                  <label for="star4" title="Satisfecho">&#9733;</label>

                  <input type="radio" id="star3" name="valoracion" value="3">
                  <label for="star3" title="Neutro">&#9733;</label>

                  <input type="radio" id="star2" name="valoracion" value="2">
                  <label for="star2" title="Insatisfecho">&#9733;</label>

                  <input type="radio" id="star1" name="valoracion" value="1">
                  <label for="star1" title="Totalmente Insatisfecho">&#9733;</label>
             </div>
         </div>
           <!-- Envia valoración a las respuesta del ChatGPT -->
          
          
          
           
           
          <br> <!-- Etiqueta de salto de línea aquí -->
          <br>
          <div class="form-group">
              <label for="comentario">Comentario:</label>
              <textarea id="comentario" name="comentario"></textarea>
          </div>
              
              <label for="ejemplos-chatgpt">Ejemplos de ChatGPT:</label>
              <textarea id="ejemplos-chatgpt" name="ejemplos-chatgpt" class="scrollable"></textarea>
              <!--Aquí van los ejemplos generados por ChatGPT-->
             
          </div>
          <div class="form-group">
              <label for="valoracion">Valoración:</label>
              <div class="rating">
                  <input type="radio" id="star5" name="valoracion" value="5">
                  <label for="star5" title="Totalmente Satisfecho">&#9733;</label>
                  
                  <input type="radio" id="star4" name="valoracion" value="4">
                  <label for="star4" title="Satisfecho">&#9733;</label>

                  <input type="radio" id="star3" name="valoracion" value="3">
                  <label for="star3" title="Nuetro">&#9733;</label>

                  <input type="radio" id="star2" name="valoracion" value="2">
                  <label for="star2" title="Insatisfecho">&#9733;</label>

                  <input type="radio" id="star1" name="valoracion" value="1">
                  <label for="star1" title="Totalmente insatisfecho">&#9733;</label>
             </div>
         </div>
          <div class="form-group">
              <label for="comentario">Comentario:</label>
              <textarea id="comentario" name="comentario"></textarea>
          </div>
          <button type="submit">Enviar valoración</button>
           <!-- Envia valoración a los ejemplos del ChatGPT -->
           
           
          <br> <!-- Etiqueta de salto de línea aquí -->
          <br>
          <button type="submit">Generar PDF</button> <!-- Genera PDF con toda la informacion del item -->
          <button type="button" onclick="history.back()">Atrás</button>
         </div>
      </form>
    </div>
  </body>
</html>
