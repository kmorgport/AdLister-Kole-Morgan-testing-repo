package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "com.codeup.adlister.controllers.VeggieServlet", urlPatterns = "/veggie")
public class VeggieServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") != null) {
//            response.sendRedirect("/profile");
//            return;
//        }
        request.setAttribute("ads", DaoFactory.getAdsDao().findAdsByCategory("Vegetables"));
        request.getRequestDispatcher("/WEB-INF/ads/veggie.jsp").forward(request, response);
    }
}