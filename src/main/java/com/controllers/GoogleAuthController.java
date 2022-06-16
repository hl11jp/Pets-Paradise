package com.controllers;

import com.DAO.UserDAO;
import com.DTO.GoogleDTO;
import com.utils.GoogleUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "GoogleAuthController", value = "/GoogleAuthController")
public class GoogleAuthController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "index.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse respnse) throws ServletException, IOException {
         String url = ERROR;

         try {
            UserDAO userDAO = new UserDAO();
            String urlParameter = "code=" + request.getParameter("code")
                + "&client_id=503483004538-81lb3cajsdbmmnec4i8b1b9sif92ia5n.apps.googleusercontent.com"
                + "&client_secret=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"
                + "&redirect_uri=http://localhost:8080/Pets_Paradise_war_exploded/GoogleAuthController"
                + "&grant_type=authorization_code";

            GoogleDTO user = GoogleUtils.getInfo(urlParameter);
            if (!userDAO.isExistEmail(user.getEmail())) {
                boolean check = userDAO.createUserGoogle(user);
                if (check) url = SUCCESS;
            }
         } catch (Exception e) {
            log("Error at GoogleAuthController: " + e.toString());
         } finally {
             request.getRequestDispatcher(url).forward(request, respnse);
         }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
