import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Get user input from form
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if ("admin".equals(email) && "admin123".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("email", "admin");
            session.setAttribute("username", "Administrator");

            response.sendRedirect("AdminPanel.jsp");
            return;
        }

        // Database credentials
        String url = "jdbc:mysql://localhost:3306/6SEM_WEBPROJECT";
        String dbUser = "root";
        String dbPassword = "";

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish Connection
            Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);

            // Corrected SQL Query
            String sql = "SELECT * FROM signup WHERE email=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // Create session and set attributes
                HttpSession session = request.getSession();
                session.setAttribute("email", rs.getString("email"));
                session.setAttribute("username", rs.getString("username"));

                // Redirect to the dashboard
                response.sendRedirect("DashBoard.jsp");
            } else {
                // Redirect back to login page with error message
                response.sendRedirect("Loginpage.jsp?error=invalid");
            }

            // Close resources
            rs.close();
            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Loginpage.jsp?error=db");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("Loginpage.jsp");  
    }
}
