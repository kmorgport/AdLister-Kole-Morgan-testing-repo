package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DecimalFormat;
@WebServlet(name = "com.codeup.adlister.controllers.LandingServlet", urlPatterns = "/landing")
public class LandingServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") != null) {
//            response.sendRedirect("/profile");
//            return;
//        }
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        DecimalFormat df = new DecimalFormat("0.00");
        request.setAttribute("df", df);
        request.getRequestDispatcher("/WEB-INF/ads/landing.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String search = request.getParameter("search");
        HttpSession session = request.getSession();
        session.removeAttribute("search");
        session.setAttribute("search",search);
        request.setAttribute("search",search);
        response.sendRedirect("/search");
    }
}