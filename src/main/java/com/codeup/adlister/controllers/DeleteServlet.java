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
@WebServlet(name = "com.codeup.adlister.controllers.DeleteServlet", urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {
    private long adId;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null){
            request.getRequestDispatcher("/WEB-INF/ads/delete.jsp")
                    .forward(request, response);
        } else {
            response.sendRedirect("/login");
        }
        adId = Long.parseLong(request.getParameter("adId"));
        Ad ad = DaoFactory.getAdsDao().getAdsByAdId(adId);
        User userPost = DaoFactory.getUsersDao().getUserByAd(adId);
        request.setAttribute("ad", ad);
        request.setAttribute("user", userPost);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println(adId);
        DaoFactory.getAdsDao().delete(adId);
        response.sendRedirect("/profile");
    }
}
