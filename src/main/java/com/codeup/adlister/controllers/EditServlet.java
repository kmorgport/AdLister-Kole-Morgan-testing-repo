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

@WebServlet(name = "controllers.EditServlet", urlPatterns = "/edit")
public class EditServlet extends HttpServlet {
    private long adId;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User profile = (User) request.getSession().getAttribute("user");
        if (profile == null) {
            response.sendRedirect("/login");
            return;
        }

//        long profileId = profile.getId();

        adId = Long.parseLong(request.getParameter("adId"));

        Ad ad = DaoFactory.getAdsDao().getAdsByAdId(adId);
        request.setAttribute("ad", ad);
        int [] categories = DaoFactory.getCategoriesDao().getAdCategories(adId);
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
                user.getId(),
                Double.parseDouble(request.getParameter("price")),
                request.getParameter("title"),
                request.getParameter("description")
        );
        String[] categories = request.getParameterValues("categories");
        DaoFactory.getAdsDao().updateAd(adId,ad.getTitle(), ad.getPrice(), ad.getDescription());
        DaoFactory.getCategoriesDao().delete(adId);
        for (String category : categories) {
            long categoryId = Long.parseLong(category);
            DaoFactory.getCategoriesDao().insert(adId, categoryId);
        }
        response.sendRedirect("/profile");
    }
}