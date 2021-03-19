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
@WebServlet(name = "com.codeup.adlister.controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/landing");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/login.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String paramPassword = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findByUserName(username);
        if (user == null) {
            response.sendRedirect("/login");
            System.out.println("null value");
            return;
        }
        boolean validAttempt = Password.check(paramPassword, user.getPassword());
        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/profile");
            System.out.println("this is where the landing should be");

        } else {
            response.sendRedirect("/login");
            System.out.println("tough tiddies");
        }
    }
}