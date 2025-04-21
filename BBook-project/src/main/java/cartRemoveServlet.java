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

@WebServlet("/cartRemoveServlet")
public class cartRemoveServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String bookTitle = request.getParameter("booktitle");

        String url = "jdbc:mysql://localhost:3306/6SEM_WEBPROJECT";
        String dbUser = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);

            String sql = "DELETE FROM addtocart WHERE booktitle = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, bookTitle);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("Profile.jsp");
            } else {
                out.println("<script>alert('Failed to remove item'); window.location='Profile.jsp';</script>");
            }

            stmt.close();
            conn.close();

        } catch (Exception e) {
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='Profile.jsp';</script>");
        }
    }
}
