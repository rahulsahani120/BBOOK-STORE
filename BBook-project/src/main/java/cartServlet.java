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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/cartServlet")
public class cartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get form data
        String bookTitle = request.getParameter("booktitle");
        String offers = request.getParameter("offers");
        String price = request.getParameter("price");
        String image = request.getParameter("image");

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
            String sql = "INSERT INTO addtocart (booktitle, image, price, offers) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, bookTitle);
            stmt.setString(2, image);
            stmt.setString(3, price);
            stmt.setString(4, offers);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                out.println("<script>alert('Add to Cart Successfully!');window.location='BuyBook.jsp';</script>");
            } else {
                out.println("<script>alert('Failed to add !'); window.location='BuyBook.jsp';</script>");
            }

            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='BuyBook.jsp'</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("BuyBook.jsp");
    }
}
