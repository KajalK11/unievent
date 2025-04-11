package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import util.DBUtil;

import java.io.IOException;
import java.sql.*;

@WebServlet("/login")
public class AuthServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(
                     "SELECT * FROM users WHERE username=? AND password=? AND role=?")) {

            stmt.setString(1, username);
            stmt.setString(2, password);
            stmt.setString(3, role);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    HttpSession session = request.getSession();
                    session.setAttribute("user", username);
                    session.setAttribute("role", role);
                    session.setAttribute("userId", rs.getInt("id"));

                    switch (role) {
                        case "admin" -> response.sendRedirect("adminDashboard.jsp");
                        case "faculty" -> response.sendRedirect("facultyDashboard.jsp");
                        case "user" -> response.sendRedirect("userDashboard.jsp");
                        default -> response.sendRedirect("index.jsp");
                    }
                } else {
                    request.setAttribute("error", "Invalid credentials");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}