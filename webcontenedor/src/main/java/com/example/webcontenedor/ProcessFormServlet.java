package com.example.webcontenedor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/processForm")
public class ProcessFormServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombre = req.getParameter("nombre"); //llamamos el id del formulario en el index
        String mensaje = "Hola estimad@ " + nombre
                + " tu formulario ha sido procesado"; //se procesa la info y se envia para resultado
        req.setAttribute("mensaje", mensaje);//se almacena como atributo de solicitud
        req.getRequestDispatcher("index.jsp").forward(req, resp); //redirige al index.

    }
}
