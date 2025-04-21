<%@ page import="java.sql.*" %>
<%
    String userId = request.getParameter("id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");

        String sql = "DELETE FROM signup WHERE id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, Integer.parseInt(userId));

        int rowsAffected = stmt.executeUpdate();

        stmt.close();
        conn.close();

        if (rowsAffected > 0) {
            response.sendRedirect("AdminPanel.jsp"); // Change to your admin panel page
        } else {
            out.println("<p style='color:red;'>User deletion failed.</p>");
        }

    } catch(Exception e) {
        out.println("<p style='color:red;'>Error deleting user: " + e.getMessage() + "</p>");
    }
%>

<%
    String bookId = request.getParameter("id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/6SEM_WEBPROJECT", "root", "");

        String sql = "DELETE FROM addbook WHERE id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, Integer.parseInt(bookId));

        int rowsAffected = stmt.executeUpdate();

        stmt.close();
        conn.close();

        if (rowsAffected > 0) {
            response.sendRedirect("AdminPanel.jsp"); // Change to your admin panel page
        } else {
            out.println("<p style='color:red;'>User deletion failed.</p>");
        }

    } catch(Exception e) {
        out.println("<p style='color:red;'>Error deleting user: " + e.getMessage() + "</p>");
    }
%>
