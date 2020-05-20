package foo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

//With @WebServlet annotation the webapp/WEB-INF/web.xml is no longer required.
@WebServlet(name = "UserDeconnexion", description = "Deconnexion de l'utilisateur", urlPatterns = "/deconnexion")
public class A_DeconnexionServlet extends HttpServlet {

	UserService userService = UserServiceFactory.getUserService();

	String thisUrl, email, nom;

	 @Override
	 public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	   UserService userService = UserServiceFactory.getUserService();

	   String thisUrl = req.getRequestURI();

	   resp.setContentType("text/html");
	   if (req.getUserPrincipal() != null) {
				resp.getWriter().println("<p>Bonjour " + req.getUserPrincipal().getName() + "! Etes-vous sur de vouloir vous deconnecter ? Pour confirmer, cliquer sur le bouton : </p> <a href=\""
						+ userService.createLogoutURL(thisUrl) + "\"><button class=\"btn-danger\">Deconnexion de l'application Tinygram</button></a>");
	   } else {
		   resp.sendRedirect("/");
	   } 
	  // resp.sendRedirect("/_ah/logout?continue=%2Fdeconnexion");
	 }
	 
	public boolean getConnected() {
		return userService.isUserLoggedIn();
	}

	public void getSignOut() {
		userService.createLogoutURL(thisUrl);
	}

}
//[END users_API_example]
