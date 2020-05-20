package foo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Entity;



//With @WebServlet annotation the webapp/WEB-INF/web.xml is no longer required.
@WebServlet(name = "UserConnexion", description = "Connexion de l'utilisateur", urlPatterns = "/connexion")
public class A_ConnexionServlet extends HttpServlet {

UserService userService = UserServiceFactory.getUserService();

String thisUrl, email, nom;

public boolean getConnected() {
return userService.isUserLoggedIn();
}

public String getNicknameUser() {
return userService.getCurrentUser().getNickname().toString();
}

public String getEmailUser() {
return userService.getCurrentUser().getEmail().toString();
}

public void getSignOut() {
userService.createLogoutURL(thisUrl);
}

@Override
public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		thisUrl = req.getRequestURI();
		
		foo.A_ConnexionServlet connection = new foo.A_ConnexionServlet();
		resp.getWriter().print("valeur de la connection" + thisUrl);
		
	//	if (connection.getNicknameUser() != null) {
			//String utilisateur = connection.getNicknameUser();
			//resp.getWriter().print("valeur utilisateur" + utilisateur);
	//	}
		
		// Début du test
		
		if (connection.getConnected()) {
			resp.getWriter().print("valeur de la connection 2  " + thisUrl);
			resp.sendRedirect("/adduser");
		} else {
			 resp.sendRedirect(userService.createLoginURL(thisUrl,"/adduser"));
		}
		
		
		// Fin du test
		
		
		resp.setContentType("text/html");
	/*	if (req.getUserPrincipal() != null) {
		
			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
			
			foo.A_ConnexionServlet connect = new foo.A_ConnexionServlet();
			String user = connect.getNicknameUser();
			
			ArrayList<String> likes = new ArrayList<String>();
			
			Entity e = new Entity("Friend", user);
			e.setProperty("firstName", "");
			e.setProperty("lastName", user);
			e.setProperty("age", 0);
			e.setProperty("LikedPost", likes);
			e.setProperty("friends", likes);
			datastore.put(e);
			
		//	resp.sendRedirect("/view");
			
		} else {
		
		//   resp.sendRedirect(userService.createLoginURL(thisUrl));
		} */
		
		}

}
//[END users_API_example]