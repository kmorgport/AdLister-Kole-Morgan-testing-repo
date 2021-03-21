package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditProfileServlet", urlPatterns = "/edit-profile")
public class EditProfileServlet extends HttpServlet {
    long userId;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        userId = user.getId();
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/ads/edit-profile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        long id = userId;
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = Password.hash(request.getParameter("password"));

        DaoFactory.getUsersDao().update(id, username, email, password);
        response.sendRedirect("/profile");
    }
}