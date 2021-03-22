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

@WebServlet(name = "controllers.EditDeleteServlet", urlPatterns = "/edit-delete")
public class EditDeleteServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("/login");
            return;
        }

        long adId = Long.parseLong(request.getParameter("adId"));
        Ad ad = DaoFactory.getAdsDao().getAdsByAdId(adId);
        User userObj = DaoFactory.getUsersDao().getUserByAd(adId);
        request.setAttribute("user", userObj);
        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/ads/edit-delete.jsp").forward(request, response);
    }
}