package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("<body>\n");
      out.write("    <!-- Header section -->\n");
      out.write("    <header>\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <h1>Watchit</h1>\n");
      out.write("        </div>\n");
      out.write("        <nav class=\"navigation\">\n");
      out.write("             <a href=\"index.jsp\" >Home</a>\n");
      out.write("            <a href=\"men.jsp\">For Men</a>\n");
      out.write("            <a href=\"women.jsp\">For Women</a>\n");
      out.write("            <a href=\"contactus.jsp\">Contact Us</a>\n");
      out.write("            <a href=\"#\">Cart</a>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"signin\">\n");
      out.write("            <button id=\"signin-btn\" onclick=\"openModal('login')\">Sign In</button>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <!-- Text Section -->\n");
      out.write("    <div class=\"text-section\" id=\"text-section\">\n");
      out.write("        <div class=\"text-container\">\n");
      out.write("            <p>Your Watch, Your Statement<br>Show the World Who You Are!</p>\n");
      out.write("            <pre>at WatchIt we believes that every timepiece<br>tells a unique story—crafted with<br>precision, infused with style, and<br>designed to express your individuality.</pre>\n");
      out.write("            <a href=\"men.jsp\" class=\"view-more\" style=\"text-decoration: none;\">\n");
      out.write("                  <button class=\"view-more\">View More</button></a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("       \n");
      out.write("            <!-- Modal Sections -->\n");
      out.write("    <div class=\"modal\" id=\"signup-modal\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <span class=\"close\" onclick=\"closeModal()\">&times;</span>\n");
      out.write("            <h2>Sign Up</h2>\n");
      out.write("            <form  action=\"data.jsp\" method=\"get\"  ACACaaid=\"signup\" onsubmit=\"return validateForm()\">\n");
      out.write("                <label for=\"username\">Username:</label>\n");
      out.write("                <input type=\"text\" id=\"username\" name=\"username\" placeholder=\"Enter username\">\n");
      out.write("                <small id=\"username-error\">Username must be between 3 and 25 characters,1 number and 1 special character.</small>\n");
      out.write("\n");
      out.write("                <label for=\"email\">Email:</label>\n");
      out.write("                <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"xyz@gmail.com\">\n");
      out.write("                <small id=\"email-error\">Please enter a valid email.</small>\n");
      out.write("\n");
      out.write("                <label for=\"password\">Password:</label>\n");
      out.write("                <input type=\"password\" id=\"password\" name=\"password\" placeholder=\"Enter password\">\n");
      out.write("                <small id=\"password-error\">Password must have at least 8 characters, 1 uppercase letter, 1 number, and 1 special character.</small>\n");
      out.write("\n");
      out.write("                <label for=\"confirm-password\">Confirm Password:</label>\n");
      out.write("                <input type=\"password\" id=\"confirm-password\" name=\"confirm-password\" placeholder=\"Reenter your password\">\n");
      out.write("                <small id=\"confirm-password-error\">Passwords do not match.</small>\n");
      out.write("\n");
      out.write("                <button type=\"submit\">SIGN UP</button>\n");
      out.write("            </form>\n");
      out.write("            <p class=\"switch-form\">\n");
      out.write("                Have an account? <a href=\"#\" onclick=\"openModal('login')\">Sign In</a>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Login Modal -->\n");
      out.write("    <div class=\"modal\" id=\"login-modal\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <span class=\"close\" onclick=\"closeModal()\">&times;</span>\n");
      out.write("            <h2>Login</h2>\n");
      out.write("           <form id=\"login\" action=\"login.jsp\" method=\"post\" onsubmit=\"return validateLoginForm()\">\n");
      out.write("             <label for=\"login-email\">Email:</label>\n");
      out.write("             <input type=\"email\" id=\"login-email\" name=\"login-email\" placeholder=\"Enter your email\">\n");
      out.write("             <small id=\"login-email-error\">Please enter a valid email.</small>\n");
      out.write("\n");
      out.write("             <label for=\"login-password\">Password:</label>\n");
      out.write("             <input type=\"password\" id=\"login-password\" name=\"login-password\" placeholder=\"Enter password\">\n");
      out.write("             <small id=\"login-password-error\">Password must be at least 8 characters long.</small>\n");
      out.write("\n");
      out.write("              <button type=\"submit\">LOGIN</button>\n");
      out.write("           </form>\n");
      out.write("            <p class=\"switch-form\">\n");
      out.write("                Don't have an account? <a href=\"#\" onclick=\"openModal('signup')\">Sign Up</a>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <script src=\"script.js\"></script>\n");
      out.write("    <script>\n");
      out.write("    document.addEventListener(\"DOMContentLoaded\", function() {\n");
      out.write("        // Check if there are URL parameters\n");
      out.write("        const urlParams = new URLSearchParams(window.location.search);\n");
      out.write("\n");
      out.write("        // Display success or failure messages based on the parameters\n");
      out.write("        if (urlParams.get(\"loginSuccess\") === \"true\") {\n");
      out.write("            alert(\"Signed in successfully!\");\n");
      out.write("            // Clear the URL parameters after displaying the message\n");
      out.write("            window.history.replaceState({}, document.title, window.location.pathname);\n");
      out.write("        } else if (urlParams.get(\"loginSuccess\") === \"false\") {\n");
      out.write("            alert(\"User not found. Please sign up for a new account.\");\n");
      out.write("            // Clear the URL parameters after displaying the message\n");
      out.write("            window.history.replaceState({}, document.title, window.location.pathname);\n");
      out.write("        }\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("    \n");
      out.write("      <footer>\n");
      out.write("    <pp>&copy; 2024 Watch Store. All rights reserved.</pp>\n");
      out.write("  </footer>\n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
