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

@WebServlet(name = "NbPost", urlPatterns = { "/nbpost" })
public class A_NbPost extends HttpServlet {


	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

	Integer compteur = 0;
	response.setContentType("text/html");
	response.setCharacterEncoding("UTF-8");
	
	foo.A_ConnexionServlet connect = new foo.A_ConnexionServlet();
	String user = connect.getNicknameUser();
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	Query q = new Query("Post").setFilter(new FilterPredicate("owner", FilterOperator.EQUAL, user));;

	PreparedQuery pq = datastore.prepare(q);
	List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());
	ArrayList<Long> listesUser = new ArrayList<Long>();
	for (Entity entity : result) {
		compteur = compteur + 1;
		listesUser.add( entity.getKey().getId());
	}
	request.setAttribute("test2", listesUser);
	this.getServletContext().getRequestDispatcher("/mypost.jsp").forward(request, response);
	
	}
}