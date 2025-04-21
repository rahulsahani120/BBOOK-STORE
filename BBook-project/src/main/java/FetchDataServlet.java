

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/FetchData")
public class FetchDataServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/6sem_webproject";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "password";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("userId");
        
        if (userId == null) {
            response.sendRedirect("Loginpage.jsp");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
            
            String sql = "SELECT * FROM users WHERE id = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, userId);
            
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                request.setAttribute("id", rs.getInt("id"));
                request.setAttribute("username", rs.getString("username"));
                request.setAttribute("email", rs.getString("email"));
                request.setAttribute("mobile", rs.getString("mobile"));
                // Add other attributes as needed
            }
            
            rs.close();
            pstmt.close();
            conn.close();
            
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("profile.jsp");
        }
    }
}