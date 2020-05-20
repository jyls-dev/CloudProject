package foo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

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

@WebServlet(name = "AddUser", urlPatterns = { "/adduser" })
public class A_AddUser extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

	response.setContentType("text/html");
	response.setCharacterEncoding("UTF-8");
	
	String url = "/view";

	Boolean trouve = false;
	
	foo.A_ConnexionServlet connect = new foo.A_ConnexionServlet();
	String user = connect.getNicknameUser();
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	Query q = new Query("Friend").setFilter(new FilterPredicate("lastName", FilterOperator.EQUAL, user));;

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