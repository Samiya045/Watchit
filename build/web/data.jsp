<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>sign up db</title>
</head>
<body>
    <%@page import="java.sql.*,java.util.*, util.DatabaseConnection"%>

    <%
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Use DatabaseConnection singleton
            Connection conn = DatabaseConnection.getInstance().getConnection();

            // Use PreparedStatement to avoid SQL injection
            String sql = "INSERT INTO db (username, email, password) VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, email);
            pstmt.setString(3, password );

            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                // Redirect with success parameter if insert was successful
                response.sendRedirect("index.jsp?success=true");
            } else {
                response.sendRedirect("index.jsp?success=false");
            }

            pstmt.close();
        } catch (Exception e) {
            response.sendRedirect("index.jsp?success1=false");
            e.printStackTrace();
        }
    %>
</body>
</html>
