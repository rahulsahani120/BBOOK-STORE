import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/Signup_Servlet")
public class Signup_Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get form data
        String username = request.getParameter("user");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");
        String cpassword = request.getParameter("cpassword");

        // Check if passwords match
        if (!password.equals(cpassword)) {
            out.println("<script>alert('Passwords do not match!'); window.location='Signup.jsp';</script>");
            return;
        }

        // Database connection details
        String url = "jdbc:mysql://localhost:3306/6SEM_WEBPROJECT";
        String dbUser = "root";
        String dbPassword = "";

        try {
            // Load MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);
            
            // Check if email already exists
            String checkEmailQuery = "SELECT email FROM signup WHERE email = ?";
            PreparedStatement checkStmt = conn.prepareStatement(checkEmailQuery);
            checkStmt.setString(1, email);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                out.println("<script>alert('Email already registered!'); window.location='Signup.jsp';</script>");
                rs.close();
                checkStmt.close();
                conn.close();
                return;
            }
            rs.close();
            checkStmt.close();

            // Insert Query
            String sql = "INSERT INTO signup (username, email, password, cpassword, mobile) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password);  // Store password as plain text
            stmt.setString(4, cpassword); // Store confirm password as plain text
            stmt.setString(5, mobile);

            // Execute Query
            int rows = stmt.executeUpdate();

            if (rows > 0) {
                out.println("<script>alert('Sign Up Successful!'); window.location='Loginpage.jsp';</script>");
            } else {
                out.println("<script>alert('Sign Up Failed!'); window.location='Signup.jsp';</script>");
            }

            // Close resources
            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();  // Print error in Tomcat logs
            out.println("<script>alert('Database Error: " + e.getMessage() + "'); window.location='Signup.jsp';</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("Signup.jsp");
    }
}
