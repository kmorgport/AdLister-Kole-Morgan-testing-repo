package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "com.codeup.adlister.controllers.FruitServlet", urlPatterns = "/fruit")
public class FruitServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") != null) {
//            response.sendRedirect("/profile");
//            return;
//        }
        request.setAttribute("ads", DaoFactory.getAdsDao().findAdsByCategory("Fruit"));
        request.getRequestDispatcher("/WEB-INF/ads/fruit.jsp").forward(request, response);
    }
}
