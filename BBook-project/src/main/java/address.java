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

@WebServlet("/address")
public class address extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get form data
        String Fname = request.getParameter("Fname");
        String address = request.getParameter("address");
        String mobile = request.getParameter("mobile");
        String bhn = request.getParameter("building");
        String state = request.getParameter("state");

        // Check if passwords match
//        if (!password.equals(cpassword)) {
//            out.println("<script>alert('Passwords do not match!'); window.location='Signup.jsp';</script>");
//            return;
//        }

        // Database connection details
        String url = "jdbc:mysql://localhost:3306/6SEM_WEBPROJECT";
        String dbUser = "root";
        String dbPassword = "";

        try {
            // Load MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);

            // Insert Query
            String sql = "INSERT INTO address (Fname, address, bhn, state, mobile) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, Fname);
            stmt.setString(2, address);
            stmt.setString(3, mobile);
            stmt.setString(4, state); 
            stmt.setString(5, bhn);

            // Execute Query
            int rows = stmt.executeUpdate();

            if (rows > 0) {
                out.println("<script>alert('Address add go to next'); window.location='OrderS.jsp';</script>");
            } else {
                out.println("<script>alert('Failed!'); window.location='Address.jsp';</script>");
            }

            // Close resources
            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();  // Print error in Tomcat logs
            out.println("<script>alert('Database Error: " + e.getMessage() + "'); window.location='Address.jsp';</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("Address.jsp");
    }
}
