package foo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.KeyRange;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.PropertyProjection;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;

import com.google.appengine.repackaged.com.google.datastore.v1.CompositeFilter;
import com.google.appengine.repackaged.com.google.datastore.v1.Projection;
import com.google.appengine.repackaged.com.google.datastore.v1.PropertyFilter;

@WebServlet(name = "DeleteUser", urlPatterns = { "/deleteuser" })
public class A_DeleteUser extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

		String url = "/deconnexion";

		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();

		foo.A_ConnexionServlet connect = new foo.A_ConnexionServlet();
		String user = connect.getNicknameUser();
		Query q = new Query("Post").setFilter(new FilterPredicate("owner", FilterOperator.EQUAL, user));;
		PreparedQuery pq = datastore.prepare(q);
		List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());
		for (Entity entity : result) {
			datastore.delete(entity.getKey());
			response.getWriter().print("<li> deleting" + entity.getKey()+"<br>");
		}
		
		Query u = new Query("Friend").setFilter(new FilterPredicate("lastName", FilterOperator.EQUAL, user));;
		PreparedQuery pu = datastore.prepare(u);
		List<Entity> resultUser = pu.asList(FetchOptions.Builder.withDefaults());
		for (Entity entityUser : resultUser) {
			datastore.delete(entityUser.getKey());
			response.getWriter().print("<li> deleting" + entityUser.getKey()+"<br>");
		}
		
		Query c = new Query("Comment").setFilter(new FilterPredicate("owner", FilterOperator.EQUAL, user));;
		PreparedQuery pc = datastore.prepare(c);
		List<Entity> resultComment = pc.asList(FetchOptions.Builder.withDefaults());
		for (Entity entityComment : resultComment) {
			datastore.delete(entityComment.getKey());
			response.getWriter().print("<li> deleting" + entityComment.getKey()+"<br>");
		}
		
		response.sendRedirect(url);
	}
}
