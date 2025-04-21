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

@WebServlet("/payment")
public class payment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String payment = request.getParameter("payment");

        String url = "jdbc:mysql://localhost:3306/6SEM_WEBPROJECT";
        String dbUser = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);

            String sql = "INSERT INTO payment (payment) VALUES (?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, payment);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                out.println("<script>alert('Payment method saved!'); window.location='OrderS.jsp';</script>");
            } else {
                out.println("<script>alert('Failed to save!'); window.location='Address.jsp';</script>");
            }

            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Database Error: " + e.getMessage() + "'); window.location='Address.jsp';</script>");
        }
    }
}
