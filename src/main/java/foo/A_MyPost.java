package foo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;

@WebServlet(name = "PostUser", urlPatterns = { "/mypost" })
public class A_MyPost extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

		ArrayList<String> PostUser = new ArrayList<String>();

		String url = "/mypost.jsp";

		Boolean trouve = false;

		foo.A_ConnexionServlet connect = new foo.A_ConnexionServlet();
		String user = connect.getNicknameUser();

		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();

		Query q = new Query("Post").setFilter(new FilterPredicate("owner", FilterOperator.EQUAL, user));
		;

		PreparedQuery pq = datastore.prepare(q);
		List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());

		for (Entity entity : result) {
			trouve = true;
		}

		if (trouve) {
			response.sendRedirect(url);
		} else {
			ArrayList<String> likes = new ArrayList<String>();

			Entity e = new Entity("Friend", user);
			e.setProperty("firstName", "");
			e.setProperty("lastName", user);
			e.setProperty("age", 0);
			e.setProperty("LikedPost", likes);
			e.setProperty("friends", likes);
			datastore.put(e);
			response.sendRedirect(url);
		}
	}
}