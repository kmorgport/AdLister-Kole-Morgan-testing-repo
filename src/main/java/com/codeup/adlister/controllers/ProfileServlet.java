package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DecimalFormat;
@WebServlet(name = "controllers.ProfileServlet", urlPatterns = "/profile")
public class ProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User profile = (User) request.getSession().getAttribute("user");
        if (profile == null) {
            response.sendRedirect("/login");
            return;
        }
//
//        long profileId = profile.getId();
        request.setAttribute("ads", DaoFactory.getAdsDao().getAdsByUserId(profile.getId()));
        DecimalFormat df = new DecimalFormat("0.00");
        request.setAttribute("df", df);
        request.getRequestDispatcher("/WEB-INF/ads/profile.jsp").forward(request, response);
    }
}