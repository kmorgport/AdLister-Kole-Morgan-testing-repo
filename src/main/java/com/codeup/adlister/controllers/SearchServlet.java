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
@WebServlet(name = "com.codeup.adlister.controllers.SearchServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") != null) {
//            response.sendRedirect("/profile");
//            return;
//        }
        HttpSession session = request.getSession();
        String input = (String) session.getAttribute("search");
        request.setAttribute("ads", DaoFactory.getAdsDao().findAdsBySearch(input));
        DecimalFormat df = new DecimalFormat("0.00");
        request.setAttribute("df", df);
        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
        session.removeAttribute("search");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String search = request.getParameter("search");
        HttpSession session = request.getSession();
        session.removeAttribute("search");
        session.setAttribute("search",search);
        request.setAttribute("search",search);
        DecimalFormat df = new DecimalFormat("0.00");
        request.setAttribute("df", df);
        response.sendRedirect("/search");
    }
}