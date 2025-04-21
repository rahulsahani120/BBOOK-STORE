import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet("/AddBookServlet")
@MultipartConfig // Handles multipart/form-data (for image)
public class AddBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String booktitle = request.getParameter("title");
        String author = request.getParameter("author");
        String genre = request.getParameter("genre");
        String price = request.getParameter("price");

        Part filePart = request.getPart("file");
        InputStream imageStream = null;
        if (filePart != null && filePart.getSize() > 0) {
            imageStream = filePart.getInputStream();
        }

        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/6sem_webproject", "root", "");

            String sql = "INSERT INTO addbook (booktitle, author, genre, image, price) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, booktitle);
            pst.setString(2, author);
            pst.setString(3, genre);
            if (imageStream != null) {
                pst.setBlob(4, imageStream);
            } else {
                pst.setNull(4, Types.BLOB);
            }
            pst.setString(5, price);

            int rowCount = pst.executeUpdate();
            if (rowCount == 1) {
                pw.println("<script>alert('New Book Store Successfully'); window.location='AdminPanel.jsp';</script>");
            } else {
                pw.println("<script>alert('Something went wrong here'); window.location='AdminPanel.jsp';</script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            pw.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException ignored) {}
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().println("<h2>This servlet only supports POST for book submission.</h2>");
    }
}
