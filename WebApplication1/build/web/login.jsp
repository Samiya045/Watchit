<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, util.DatabaseConnection"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
</head>
<body>
    <%
        String email = request.getParameter("login-email");
        String password = request.getParameter("login-password");
        boolean userFound = false;

        try {
            // Use DatabaseConnection singleton
            Connection conn = DatabaseConnection.getInstance().getConnection();

            // Query to check if user exists with the provided email and password
            String sql = "SELECT * FROM db WHERE email = ? AND password = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                userFound = true;
                // Redirect to the index.jsp page with a success message
                response.sendRedirect("index.jsp?loginSuccess=true");
            } else {
                // Redirect to the index.jsp page with a failure message
                response.sendRedirect("index.jsp?loginSuccess=false");
            }

            rs.close();
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp?loginSuccess=false");
        }
    %>
</body>
</html>
