//CreateAdServlet
package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "com.codeup.adlister.controllers.CreateServlet", urlPatterns = "/create")
public class CreateServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null){
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                    .forward(request, response);
        } else {
            response.sendRedirect("/login");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = (User) request.getSession().getAttribute("user");
        HttpSession session = request.getSession();
        try {
            Double.parseDouble(request.getParameter("price"));
        } catch (Exception e) {
            session.setAttribute("errordouble", "Please enter a valid number for price field.");
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
        }
        Ad ad = new Ad(
                user.getId(),
                Double.parseDouble(request.getParameter("price")),
                request.getParameter("title"),
                request.getParameter("description")
        );
        try {
            String[] categories1 = request.getParameterValues("categories");
            String result = categories1[0];
        } catch (Exception e) {
            session.setAttribute("error", "Please select at least one category.");
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
        }
        String[] categories = request.getParameterValues("categories");
        DaoFactory.getAdsDao().insert(ad);
        long adId = DaoFactory.getAdsDao().getAdIdByAttributes(
                user.getId(), request.getParameter("title"),
                Double.parseDouble(request.getParameter("price")),
                request.getParameter("description"));
        for (String category : categories) {
            long categoryId = Long.parseLong(category);
            DaoFactory.getCategoriesDao().insert(adId, categoryId);
        }
        session.removeAttribute("error");
        session.removeAttribute("errordouble");
        response.sendRedirect("/landing");
    }
}