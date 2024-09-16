
package com.user.servlet;

import java.io.IOException;

import com.entity.User;
import com.DAO.UserDAOimpl;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String number = request.getParameter("number");
            String password = request.getParameter("password");
            String checkBox = request.getParameter("checkBox");

            // Session to store error or success messages
            HttpSession session = request.getSession();

            // Validate input fields
            if (name == null || name.isEmpty()) {
                session.setAttribute("failedMsg", "Name is required");
                response.sendRedirect("register.jsp");
                return;
            }

            if (email == null || email.isEmpty()) {
                session.setAttribute("failedMsg", "Email is required");
                response.sendRedirect("register.jsp");
                return;
            }

            if (number == null || number.isEmpty()) {
                session.setAttribute("failedMsg", "Phone number is required");
                response.sendRedirect("register.jsp");
                return;
            }

            if (password == null || password.isEmpty()) {
                session.setAttribute("failedMsg", "Password is required");
                response.sendRedirect("register.jsp");
                return;
            }

            if (checkBox == null) {
                session.setAttribute("failedMsg", "Please agree to the terms and conditions");
                response.sendRedirect("register.jsp");
                return;
            }

            // If all inputs are valid, proceed to registration
            User us = new User();
            us.setEmail(email);
            us.setPassword(password);
            us.setName(name);
            us.setPhno(number);

            UserDAOimpl dao = new UserDAOimpl(DBConnect.getConn());
            boolean f = dao.userRegister(us);

            if (f) {
                session.setAttribute("succMsg", "User registered successfully!");
                response.sendRedirect("register.jsp");
            } else {
                session.setAttribute("failedMsg", "Something went wrong on the server...");
                response.sendRedirect("register.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred during registration");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("register.jsp");
    }
}








