package foo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

//With @WebServlet annotation the webapp/WEB-INF/web.xml is no longer required.
@WebServlet(name = "CommentPost", description = "Vue du commentaire d'un post", urlPatterns = "/commentpost/*")

/****** CLASS OK ****/ 
public class A_CommentPost extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
				
		String url = "/compteView.jsp";
		
		UserService userService = UserServiceFactory.getUserService();

		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");

		StringBuffer post = req.getRequestURL();
		
		// en local
		String res = post.substring(34);
		
		//en ligne
		//String res = post.substring(52);

		
		Long res2 = Long.parseLong(res);
		/*		
		resp.getWriter().print("<li> id du post récupéré : " + res2.getClass());
		resp.getWriter().print("<li> id du post récupéré : " + res2);
		resp.getWriter().print("<li> Message post récupéré : " + req.getParameter("messageComment"));
		*/
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		Entity commentPost = new Entity("Comment");
		
		commentPost.setProperty("idPostComment", res2);
		
		commentPost.setProperty((String)"owner", userService.getCurrentUser().getNickname());
		
		commentPost.setProperty((String)"commentPost", req.getParameter("messageComment"));
		
		commentPost.setProperty((String) "date", new Date());

		datastore.put(commentPost);
		
		resp.sendRedirect("/view");
		
		
	}
	
}
