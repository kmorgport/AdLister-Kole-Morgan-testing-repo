package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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

        long adId = Long.parseLong(request.getParameter("adId"));
        Ad ad = DaoFactory.getAdsDao().getAdsByAdId(adId);
        User user = DaoFactory.getUsersDao().getUserByAd(adId);
        request.setAttribute("ads", ad);
        request.setAttribute("users", user);
        request.getRequestDispatcher("/WEB-INF/ads/adpost.jsp").forward(request, response);
    }
}