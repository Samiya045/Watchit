<%-- 
    Document   : data
    Created on : Oct 22, 2024, 9:08:11 PM
    Author     : bisma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page  import= "java.sql.*,java.util.*"%>                                                                                                  
        <%
        String Uname=request.getParameter("username");
        String Email=request.getParameter("email");
        String Password=request.getParameter("password");
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","");
        Statement st=conn.createStatement();
        int i = st.executeUpdate("insert into db values('"+Uname+"','"+Email+"','"+Password+"')");
        System.out.println("sucess");
       if (i > 0) {
                    // If insertion is successful, redirect to home.jsp
                    
                    response.sendRedirect("men.jsp");
                } else {
                    // If insertion fails, show an error message
                    out.println("<p>Sign-up failed. Please try again.</p>");
                }
            } catch (Exception e) {
                out.println("<p>Error occurred: " + e.getMessage() + "</p>");
                e.printStackTrace();
            }

        %>
    </body>
</html>
