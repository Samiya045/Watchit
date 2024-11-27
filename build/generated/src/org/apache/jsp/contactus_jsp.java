package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contactus_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/modal.jsp");
  }

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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Watchit</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("              \n");
      out.write("            <!-- Modal Sections -->\n");
      out.write("            \n");
      out.write("    <div class=\"modal\" id=\"signup-modal\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("           <button class=\"Close2\" onclick=\"closeModal()\">&times;</button>\n");
      out.write("            <h2>Sign Up</h2>\n");
      out.write("            <form  action=\"data.jsp\" method=\"get\"  ACACaaid=\"signup\" onsubmit=\"return validateForm()\">\n");
      out.write("                <label for=\"username\">Username:</label>\n");
      out.write("                <input type=\"text\" id=\"username\" name=\"username\" placeholder=\"Enter username\">\n");
      out.write("                <small id=\"username-error\">Username must be between 3 and 25 characters.</small>\n");
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
      out.write("             <button class=\"Close1\" onclick=\"closeModal()\">&times;</button>\n");
      out.write("            <h2>Login</h2>\n");
      out.write("           <form id=\"login\" action=\"login.jsp\" method=\"post\" onsubmit=\"return validateLoginForm()\">\n");
      out.write("             <label for=\"login-email\">Email:</label>\n");
      out.write("             <input type=\"email\" id=\"login-email\" name=\"login-email\" placeholder=\"Enter your email\">\n");
      out.write("             <small id=\"login-email-error\">Please enter a valid email.</small>\n");
      out.write("             <br>\n");
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
      out.write("        \n");
      out.write("    </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <title>Contact Us</title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <h1>Watchit</h1>\n");
      out.write("        </div>\n");
      out.write("             <nav class=\"navigation\">\n");
      out.write("   <a href=\"index.jsp\" class=\"");
      out.print( request.getServletPath().equals("/index.jsp") ? "active-link" : "" );
      out.write("\">Home</a>\n");
      out.write("<a href=\"men.jsp\" class=\"");
      out.print( request.getServletPath().equals("/men.jsp") ? "active-link" : "" );
      out.write("\">For Men</a>\n");
      out.write("<a href=\"women.jsp\" class=\"");
      out.print( request.getServletPath().equals("/women.jsp") ? "active-link" : "" );
      out.write("\">For Women</a>\n");
      out.write("<a href=\"contactus.jsp\" class=\"");
      out.print( request.getServletPath().equals("/contactus.jsp") ? "active-link" : "" );
      out.write("\">Contact Us</a>\n");
      out.write("<a href=\"Cart.jsp\" class=\"");
      out.print( request.getServletPath().equals("/Cart.jsp") ? "active-link" : "" );
      out.write("\">Cart</a>\n");
      out.write("\n");
      out.write("      </nav>\n");
      out.write("        <div class=\"signin\">\n");
      out.write("            <button id=\"signin-btn\" onclick=\"openModal('login')\">Sign In</button>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"contact-info\">\n");
      out.write("            <h2>Contact Information</h2>\n");
      out.write("            <pp>&#128222 Phone: 0325-7685431</pp>\n");
      out.write("            <pp>&#128231 Email: support@watchit.com</pp>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <footer>\n");
      out.write("        <pp>&copy; 2024 Watch Store. All rights reserved.</pp>\n");
      out.write("    </footer>\n");
      out.write("     <script>\n");
      out.write("      // JavaScript function to show popup\n");
      out.write("      function showPopupMessage(message) {\n");
      out.write("          var popup = document.getElementById('popup');\n");
      out.write("          popup.textContent = message;\n");
      out.write("          popup.style.display = 'block';\n");
      out.write("          setTimeout(() => {\n");
      out.write("              popup.style.display = 'none';\n");
      out.write("          },3000);\n");
      out.write("      };\n");
      out.write("\n");
      out.write("      // Check URL for success parameter\n");
      out.write("      window.onload = function() {\n");
      out.write("          var urlParams = new URLSearchParams(window.location.search);\n");
      out.write("          if (urlParams.get('success') === 'true') {\n");
      out.write("              showPopupMessage('Message sent successfully');\n");
      out.write("          }\n");
      out.write("          elseif(urlparams.get(success)=='false');\n");
      out.write("          {\n");
      out.write("              showPopupMessage('Sorry! something went wrong message not sent');\n");
      out.write("              \n");
      out.write("          }\n");
      out.write("      };\n");
      out.write("      document.getElementById('sendMessageButton').addEventListener('click', function(event) {\n");
      out.write("    // Prevent form submission\n");
      out.write("    event.preventDefault();\n");
      out.write("\n");
      out.write("    // Get form fields and error elements\n");
      out.write("    var nameInput = document.getElementById('name');\n");
      out.write("    var messageInput = document.getElementById('message');\n");
      out.write("    var nameError = document.getElementById('nameError');\n");
      out.write("    var messageError = document.getElementById('messageError');\n");
      out.write("    var formError = document.getElementById('formError');\n");
      out.write("\n");
      out.write("    // Regular expression for name validation (no numbers or special characters)\n");
      out.write("    var nameRegex = /^[A-Za-z\\s]+$/;\n");
      out.write("\n");
      out.write("    // Track if there are any validation errors\n");
      out.write("    let hasError = false;\n");
      out.write("\n");
      out.write("    // Validate name\n");
      out.write("    // Validate name\n");
      out.write("    if (!nameRegex.test(nameInput.value.trim()) || nameInput.value.trim() === \"\") {\n");
      out.write("        nameError.innerText = \"This field should not have any numbers or special characters.\";\n");
      out.write("        nameInput.style.borderColor = \"red\";\n");
      out.write("        hasError = true;\n");
      out.write("    } else {\n");
      out.write("        nameError.innerText = \"\";\n");
      out.write("        nameInput.style.borderColor = \"\";\n");
      out.write("    }\n");
      out.write("    // Validate message length (at least 10 characters)\n");
      out.write("     // Validate message length (at least 10 characters)\n");
      out.write("    if (messageInput.value.trim().length < 10) {\n");
      out.write("        messageError.innerText = \"Message must be at least 10 characters long.\";\n");
      out.write("        messageInput.style.borderColor = \"red\";\n");
      out.write("        hasError = true;\n");
      out.write("    } else {\n");
      out.write("        messageError.innerText = \"\";\n");
      out.write("        messageInput.style.borderColor = \"\";\n");
      out.write("    }\n");
      out.write("    // Display form error message if there are errors\n");
      out.write("    if (hasError) {\n");
      out.write("        formError.innerText = \"Message not sent.\";\n");
      out.write("        formError.style.color = \"red\";\n");
      out.write("    } else {\n");
      out.write("        formError.innerText = \"\";\n");
      out.write("        // If no errors, proceed with form submission (you can add submission logic here)\n");
      out.write("        alert(\"Message sent successfully!\");\n");
      out.write("    }\n");
      out.write("});\n");
      out.write("  </script>\n");
      out.write("</body>\n");
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
