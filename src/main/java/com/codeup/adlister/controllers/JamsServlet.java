package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DecimalFormat;
@WebServlet(name = "com.codeup.adlister.controllers.JamsServlet", urlPatterns = "/jams")
public class JamsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") != null) {
//            response.sendRedirect("/profile");
//            return;
//        }
        request.setAttribute("ads", DaoFactory.getAdsDao().findAdsByCategory("Jams, Jellies, and Preserves"));
        DecimalFormat df = new DecimalFormat("0.00");
        request.setAttribute("df", df);
        request.getRequestDispatcher("/WEB-INF/ads/jams.jsp").forward(request, response);
    }
}