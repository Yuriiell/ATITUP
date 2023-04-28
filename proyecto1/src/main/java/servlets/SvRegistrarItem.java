/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import util.ChatGPT;

/**
 *
 * @author HP
 */
@WebServlet(name = "SvRegistrarItem", urlPatterns = {"/SvRegistrarItem"})
public class SvRegistrarItem extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String categoria=request.getParameter("categoria");
    String pregunta=request.getParameter("pregunta");
    String respuesta=request.getParameter("respuesta");
    String respuestaSeleccionada=request.getParameter("respuesta-registro");
    String ejemploRespuesta=request.getParameter("ejemploRespuesta");
    String ejemploSeleccionado=request.getParameter("ejemploSelect");
    String respuestaChat =request.getParameter("respuestaObtenida");

    if ("consultarChatGPTRespuesta".equals(request.getParameter("accion"))) {
        // código para consultar a ChatGPT con la pregunta
        respuestaChat = ChatGPT.conexion(pregunta);
        JOptionPane.showMessageDialog(null,respuestaChat);
        request.setAttribute("respuestaChat", respuestaChat);
    }
    else if ("consultarChatGPTEjemplo".equals(request.getParameter("accion"))) {
         // código para consultar a ChatGPT con la pregunta
         String ejemploChat = ChatGPT.conexion("De un ejemplo de " + respuestaChat);
        request.setAttribute("ejemploChat", ejemploChat);
        request.setAttribute("respuestaChat", respuestaChat);            
    } else if ("registrarItem".equals(request.getParameter("accion"))) {
        // código para registrar el ítem con todos los campos del formulario
        
        response.sendRedirect("opcionesAdministrador.jsp"); //redirecciona a las siguiente página del formulario web
    }
    request.setAttribute("categoria", categoria);
    request.setAttribute("pregunta", pregunta);
    request.setAttribute("respuesta", respuesta);
    request.setAttribute("ejemploRespuesta", ejemploRespuesta);

    request.getRequestDispatcher("registroItemAdmin.jsp").forward(request, response);
}


    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
