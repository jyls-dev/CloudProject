package foo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

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
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;



//With @WebServlet annotation the webapp/WEB-INF/web.xml is no longer required.
@WebServlet(name = "InfosUser", description = "Infos sur l'utilisateur", urlPatterns = "/infoUser/*")
public class A_InfoUser extends HttpServlet {

	Integer NombreFollow;
	Integer NombreFollowers;
	Integer NombrePost;
	
public Integer getNbFollow() {
	foo.A_ConnexionServlet connection = new foo.A_ConnexionServlet();
	String User = connection.getNicknameUser();
	ArrayList<String> NbFollow = new ArrayList<String>();
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	Query q = new Query("Friend").setFilter(new FilterPredicate("lastName", FilterOperator.EQUAL, User));;

	PreparedQuery pq = datastore.prepare(q);
	List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());

	for (Entity entity : result) {
		NbFollow = (ArrayList<String>) entity.getProperty("friends");
	}
	
	if (NbFollow != null) {
		NombreFollow = NbFollow.size();
	} else {
		NombreFollow = 0;
	}
	return NombreFollow;
}

public Integer getNbFollower() {
	foo.A_ConnexionServlet connection = new foo.A_ConnexionServlet();
	String User = connection.getNicknameUser();
	ArrayList<String> NbFollow = new ArrayList<String>();
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	Query q = new Query("Friend");

	PreparedQuery pq = datastore.prepare(q);
	List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());
    NombreFollowers = 0;
	for (Entity entity : result) {
		NbFollow = (ArrayList<String>) entity.getProperty("friends");
		if (NbFollow != null) {
			for (Integer i = 0; i < NbFollow.size(); i++) { //Changer en boucle while
				if (NbFollow.get(i).equals(User)) {
					NombreFollowers = NombreFollowers + 1;
				}
			}
		}
	}
	return NombreFollowers;
}

public Integer getNbPost() {
	foo.A_ConnexionServlet connection = new foo.A_ConnexionServlet();
	String User = connection.getNicknameUser();
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	NombrePost = 0;
	Query q = new Query("Post").setFilter(new FilterPredicate("owner", FilterOperator.EQUAL, User));;

	PreparedQuery pq = datastore.prepare(q);
	List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());
	for (Entity entity : result) {
		NombrePost = NombrePost + 1;
	}
	return NombrePost;
}

public Long getNbLike(Integer i) {
	Integer compteur = 1;
	Long res = Long.parseLong("0");
	foo.A_ConnexionServlet connection = new foo.A_ConnexionServlet();
	String User = connection.getNicknameUser();
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();	
	Query q = new Query("Post").setFilter(new FilterPredicate("owner", FilterOperator.EQUAL, User));;
	PreparedQuery pq = datastore.prepare(q);
	List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());

	for (Entity entity : result) {
		if (compteur == i) {
			res = (Long) entity.getProperty("likec");
		}
		if (compteur == i) break;
		compteur = compteur + 1;
	}
	return res;
}

public String getPostUrl(Integer i) {
	Integer compteur = 1;
	String res = "";
	foo.A_ConnexionServlet connection = new foo.A_ConnexionServlet();
	String User = connection.getNicknameUser();
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();	
	Query q = new Query("Post").setFilter(new FilterPredicate("owner", FilterOperator.EQUAL, User));;
	PreparedQuery pq = datastore.prepare(q);
	List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());

	for (Entity entity : result) {
		if (compteur == i) {
			res = (String) entity.getProperty("url");
		}
		if (compteur == i) break;
		compteur = compteur + 1;
	}
	return res;
}

public String getBody(Integer i) {
	Integer compteur = 1;
	String res = "";
	foo.A_ConnexionServlet connection = new foo.A_ConnexionServlet();
	String User = connection.getNicknameUser();
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();	
	Query q = new Query("Post").setFilter(new FilterPredicate("owner", FilterOperator.EQUAL, User));;
	PreparedQuery pq = datastore.prepare(q);
	List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());

	for (Entity entity : result) {
		if (compteur == i) {
			res = (String) entity.getProperty("body");
		}
		if (compteur == i) break;
		compteur = compteur + 1;
	}
	return res;
}

}
//[END users_API_example]