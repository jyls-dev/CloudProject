package foo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
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

//With @WebServlet annotation the webapp/WEB-INF/web.xml is no longer required.
@WebServlet(name = "FollowList", description = "gens qui me suivent", urlPatterns = "/listfollow")

public class FollowList extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		ArrayList<String> FollowUser = new ArrayList<String>();
		ArrayList<String> result = new ArrayList<String>();
		
		foo.A_ConnexionServlet connect = new foo.A_ConnexionServlet();
		String user = connect.getNicknameUser();
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		
		Query z = new Query("Friend");
		PreparedQuery pqq = datastore.prepare(z);
		List<Entity> resultat = pqq.asList(FetchOptions.Builder.withDefaults());
		
		for (Entity entityy : resultat) {
			FollowUser = (ArrayList<String>) entityy.getProperty("friends");
			if (FollowUser != null) {
				for (int i = 0; i < FollowUser.size(); i++) {
					if (FollowUser.get(i).equals(user)) {
						result.add((String )entityy.getProperty("lastName"));
					}
				}
			}
		}
		
		
			req.setAttribute("test2", result);
			this.getServletContext().getRequestDispatcher("/FollowList.jsp").forward(req, resp);
		
	}

}

//[END users_API_example]
