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
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;

import com.google.appengine.repackaged.com.google.datastore.v1.CompositeFilter;
import com.google.appengine.repackaged.com.google.datastore.v1.Projection;
import com.google.appengine.repackaged.com.google.datastore.v1.PropertyFilter;


@WebServlet(name = "AddaFriend", urlPatterns = { "/addFriend/*" })
public class A_AddFriend extends HttpServlet {
	
	@SuppressWarnings("unchecked")
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		
		//
		ArrayList<String> ami = new ArrayList<String>();
		ArrayList<String> amibis = new ArrayList<String>();
		String prenom = "";
		String nom = "";
		ArrayList<String> likes = new ArrayList<String>();
		Long age = Long.parseLong("0");
		//
	response.setContentType("text/html");
	response.setCharacterEncoding("UTF-8");
	
	StringBuffer post = request.getRequestURL();
	
	//en local
	
	//String res = post.substring(39);
	
	//en ligne 
	
	String res = post.substring(57);

	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	foo.A_ConnexionServlet connect = new foo.A_ConnexionServlet();
	String user = connect.getNicknameUser();
	
	Entity Person = new Entity("Friend",user);
	
	Query q = new Query("Friend").setFilter(new FilterPredicate("lastName", FilterOperator.EQUAL, user));;

	PreparedQuery pq = datastore.prepare(q);
	List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());
		
	for (Entity entity : result) {
		
		//
		age = (Long) entity.getProperty("age");
		prenom = (String) entity.getProperty("firstName");
		nom = (String) entity.getProperty("lastName");
		ami = (ArrayList<String>) entity.getProperty("friends");
		likes = (ArrayList<String>) entity.getProperty("LikedPost");
		//
		//listesUser.add((String) entity.getProperty("lastName"));
		response.getWriter().print("<li> Ami : " + ami +"<br>");
	}
	
	if (ami != null) {
		ami.add(res);
		Person.setProperty("friends", ami);
	} else {
		amibis.add(res);
		Person.setProperty("friends", amibis);
	}
	
	
	Person.setProperty("firstName", prenom);
	Person.setProperty("lastName", nom);
	Person.setProperty("age", age);
	Person.setProperty("LikedPost", likes);
	
	datastore.put(Person);
	
	//request.setAttribute("test2", listesUser);
	//this.getServletContext().getRequestDispatcher("/view").forward(request, response);
	response.sendRedirect("/view");
	}
}