package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class aboutus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>About Us</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write(" \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <h1>Watchit</h1>\n");
      out.write("        </div>\n");
      out.write("               <nav class=\"navigation\">\n");
      out.write("    <a href=\"index.jsp\" class=\"");
      out.print( request.getServletPath().equals("/index.jsp") ? "active-link" : "" );
      out.write("\">Home</a>\n");
      out.write("<a href=\"men.jsp\" class=\"");
      out.print( request.getServletPath().equals("/men.jsp") ? "active-link" : "" );
      out.write("\">For Men</a>\n");
      out.write("<a href=\"women.jsp\" class=\"");
      out.print( request.getServletPath().equals("/women.jsp") ? "active-link" : "" );
      out.write("\">For Women</a>\n");
      out.write("<a href=\"aboutus.jsp\" class=\"");
      out.print( request.getServletPath().equals("/aboutus.jsp") ? "active-link" : "" );
      out.write("\">About Us</a>\n");
      out.write("<a href=\"Cart.jsp\" class=\"");
      out.print( request.getServletPath().equals("/Cart.jsp") ? "active-link" : "" );
      out.write("\">Cart</a>\n");
      out.write("\n");
      out.write("</nav>\n");
      out.write("        <div class=\"signin\">\n");
      out.write("            <button id=\"signin-btn\" onclick=\"openModal('login')\">Sign In</button>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("  \n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("        <div class=\"center\">\n");
      out.write("            <img src=\"b1.jpg\" alt=\"0T7 picture\"/>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"text-container\">\n");
      out.write("            <div class=\"logo-container\">\n");
      out.write("                <img class=\"logo\" src=\"b2.JPG\" alt=\"Banner\"/>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"text-content\">\n");
      out.write("                <h2>\n");
      out.write("                    ABOUT US\n");
      out.write("                </h2>\n");
      out.write("                <p>BTS, an acronym of Bangtan Sonyeondan or ?Beyond the Scene,? is a Grammy-nominated South Korean group that has been capturing the hearts of millions of fans globally since its debut in June 2013.</p>\n");
      out.write("                <p>The members of BTS are RM, Jin, SUGA, j-hope, Jimin, V, and Jung Kook. Gaining recognition for their authentic and self-produced music, top-notch performances, and the way they interact with their fans, BTS has established themselves as \n");
      out.write("                ?21st century Pop Icons? breaking countless world records. \n");
      out.write("                While imparting a positive influence through activities such as the LOVE MYSELF campaign and the\n");
      out.write("                UN ?Speak Yourself? speech, the band has mobilized millions of fans across the world (named ARMY), \n");
      out.write("                collected four No. 1 songs in a span of 9 months, performed multiple sold-out stadium shows \n");
      out.write("                across the world, and been named TIME?s Entertainer of the Year 2020. BTS has been nominated for \n");
      out.write("                Best Pop Duo/Group Performance for the 63rd Grammy Awards and recognized with numerous prestigious \n");
      out.write("                awards like the Billboard Music Awards, American Music Awards and MTV Video Music Awards.</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div>\n");
      out.write("        <section>\n");
      out.write("        <table>\n");
      out.write("            <div class=\"members-container\">\n");
      out.write("             <tbody>\n");
      out.write("              <tr>\n");
      out.write("              <td  ><b>WATCHES</b></td>\n");
      out.write("              <td ><a href=\"\"><img src=\"G6.jpeg\" alt=\"RM\"></a></td>\n");
      out.write("              <td></td>\n");
      out.write("              <td><a href=\"\"><img src=\"G11.jpeg\" alt=\"kimsoek jin\"></a></td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                <td><a href =\"\"><img src=\"G6.jpeg\" alt=\"SUGA\"></a></td>\n");
      out.write("                <td ></td>\n");
      out.write("                <td><a href =\"\"><img src=\"G1.jpeg\" alt=\"j j-hopes\"></a></td>\n");
      out.write("                <td><a href =\"\"><img src=\"G2.jpeg\" alt=\"jimin\"></a></td>\n");
      out.write("               </tr>\n");
      out.write("               <tr>\n");
      out.write("                <td></td>\n");
      out.write("                <td ><a href =\"\"><img src=\"img1.jpg\" alt=\"men\"></a></td>\n");
      out.write("                <td><a href =\"\"><img src=\"img2.jpej\" alt=\"men\"></a></td>\n");
      out.write("              <td></td>\n");
      out.write("               </tr>\n");
      out.write("             </tbody>\n");
      out.write("             </div>\n");
      out.write("             </div>\n");
      out.write("    </table>\n");
      out.write("    </section>\n");
      out.write("       \n");
      out.write(" </body>\n");
      out.write("\n");
      out.write("</html>");
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
