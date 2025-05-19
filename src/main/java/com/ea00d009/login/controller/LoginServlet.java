package com.ea00d009.login.controller;

import com.ea00d009.login.model.Usuario;
import com.ea00d009.login.util.UsuarioStore;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Usuario usuario = UsuarioStore.validar(username, password);
        if (usuario != null) {
            request.setAttribute("nombre", usuario.getUsername());
            request.getRequestDispatcher("bienvenido.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Usuario o contraseña incorrectos.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}