import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String mobile = request.getParameter("mobile");
        String idStr = request.getParameter("id");

        if (idStr == null || idStr.isEmpty()) {
            out.println("<script>alert('User ID missing'); window.location='Profile.jsp';</script>");
            return;
        }

        try {
            int id = Integer.parseInt(idStr);

            String dbURL = "jdbc:mysql://localhost:3306/6SEM_WEBPROJECT";
            String dbUser = "root";
            String dbPass = "";

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "UPDATE signup SET username = ?, mobile = ? WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, mobile);
            stmt.setInt(3, id);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                out.println("<script>alert('Profile updated successfully!'); window.location='Profile.jsp';</script>");
            } else {
                out.println("<script>alert('Update failed.'); window.location='Profile.jsp';</script>");
            }

            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='Profile.jsp';</script>");
        }
    }
}
