package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdPostServlet", urlPatterns = "/adpost")
public class AdPostServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        User profile = (User) request.getSession().getAttribute("user");
//        if (profile == null) {
//            response.sendRedirect("/login");
//            return;
//        }
//
//        long profileId = profile.getId();

        request.setAttribute("ad", DaoFactory.getAdsDao().getAdsByAdId(1));
        request.getRequestDispatcher("/WEB-INF/ads/adpost.jsp").forward(request, response);
    }
}