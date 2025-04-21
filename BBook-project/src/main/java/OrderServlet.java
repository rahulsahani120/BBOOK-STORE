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

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get form data
        String bookTitle = request.getParameter("book_title");
        String bookImage = request.getParameter("book_image");
        String price = request.getParameter("price");
        //String image = request.getParameter("book_image");
        String paymentMethod = request.getParameter("payment_method");

        // Get current datetime in MySQL format
        LocalDateTime now = LocalDateTime.now();
        String orderDate = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

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
            String sql = "INSERT INTO orders (book_title, book_image, price, payment_method, order_date) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setString(1, bookTitle);
            stmt.setString(2, bookImage);
            stmt.setString(3, price);
            stmt.setString(4, paymentMethod);
            stmt.setString(5, orderDate);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                out.println("<script>alert('Order Placed Successfully!');</script>");
            } else {
                out.println("<script>alert('Failed to place order!');</script>");
            }

            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='OrderS.jsp'</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("OrderS.jsp");
    }
}
