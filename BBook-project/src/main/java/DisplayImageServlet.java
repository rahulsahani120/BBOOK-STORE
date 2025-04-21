import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.*;
import java.sql.*;

@WebServlet("/DisplayImageServlet")
public class DisplayImageServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String bookId = request.getParameter("id");

        Connection con = null;
        InputStream is = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/6sem_webproject", "root", "");

            String sql = "SELECT image FROM addbook WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, bookId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                is = rs.getBinaryStream("image");

                response.setContentType("image/jpeg"); // Or png if needed
                OutputStream os = response.getOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead;

                while ((bytesRead = is.read(buffer)) != -1) {
                    os.write(buffer, 0, bytesRead);
                }

                os.flush();
                os.close();
                is.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException ignored) {}
        }
    }
}
