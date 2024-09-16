//package com.user.servlet;
//
//import java.io.IOException;
//
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
////import javax.servlet.http.HttpSession;
//import jakarta.servlet.annotation.WebServlet;
//
//
//
//@WebServlet ("/register")
//public class RegisterServlet extends HttpServlet{
//
//	@Override
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		try {
//			 String name = request.getParameter("name");
//	            String email = request.getParameter("email");
//	            String number = request.getParameter("number");
//	            String password = request.getParameter("password");
//	            String checkBox = request.getParameter("checkBox");
//	            
//	            System.out.println(name+ " " + email + " "  + number + " " + password + " " + checkBox);
//////	            User u = new User();
//////	            u.setEmail(email);
//////	            u.setPassword(password);
//////	            u.setName(name);
//////	            u.setPhoneNumber(number);
//////	            
//////	            HttpSession session = request.getSession();
//////	            if (checkBox != null) {
//////	                UserDao userDao = new UserDaoImpl(DBConnection.getConnection());
//////	                boolean f2 = userDao.checkEmail(email);
//////	                if (f2) {
//////	                    boolean f = userDao.userRegistration(u);
//////	                    if (f) {
//////	                        session.setAttribute("succMsg", "Registration Successfully");
//////	                        response.sendRedirect("register.jsp");
//////	                    } else {
//////	                        session.setAttribute("failedMsg", "Something went wrong on server");
//////	                        response.sendRedirect("register.jsp");
//////	                    }
//////	                } else {
//////	                    session.setAttribute("failedMsg", "User Already Exist Try Another Email");
//////	                    response.sendRedirect("register.jsp");
//////	                }
//////	            } else {
//////	                session.setAttribute("failedMsg", "Please check term and condition");
//////	                response.sendRedirect("register.jsp");
//////	            }
//////	            
//	            
//		} catch (Exception e) {
//            e.printStackTrace();
////            System.out.println("Error : " + e.getMessage());
//	}
//	
//
//}
//
//}
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








