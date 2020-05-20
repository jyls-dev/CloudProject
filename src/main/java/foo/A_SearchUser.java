package foo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
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

@WebServlet(name = "seachuser", urlPatterns = { "/searchuser/*" })
public class A_SearchUser extends HttpServlet {

	String User = "";

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		Integer compteur = 0;
		String url = "/view";
		
		StringBuffer lastName = request.getRequestURL();
		
		String res = lastName.substring(33);
				
		User = request.getParameter("nomUser");
		
		
		if(res.equals(null)) {
			User = request.getParameter("nomUser");
		} else {
			User = res;
		}
		
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();

		Query searchUser = new Query("Friend").setFilter(new FilterPredicate("lastName", FilterOperator.EQUAL, User));
		PreparedQuery pqSearchUser = datastore.prepare(searchUser);
		List<Entity> resultUser = pqSearchUser.asList(FetchOptions.Builder.withDefaults());
		HashMap<Long, List<String>> infoUser = new HashMap<Long, List<String>>();

		Query postUser = new Query("Post").setFilter(new FilterPredicate("owner", FilterOperator.EQUAL, User));
		PreparedQuery pqPostUser = datastore.prepare(postUser);
		HashMap<Long, List<String>> listPost = new HashMap<>();
		
		if(resultUser != null) {

			for (Entity entityUser : resultUser) {

				/* Inclure les amis */
				List<String> listInfoUser = new ArrayList<>();

				Long idUser = entityUser.getKey().getId();
				String StridUser = Long.toString(idUser);
				
				listInfoUser.add((String)entityUser.getProperty("lastName").toString());
				listInfoUser.add((String)StridUser);
				infoUser.put(entityUser.getKey().getId(), listInfoUser);
			}

			List<Entity> resultPost = pqPostUser.asList(FetchOptions.Builder.withDefaults());

			for (Entity entityPostUser : resultPost) {

				ArrayList<String> listInfoPost = new ArrayList<>();

				listInfoPost.add((String)entityPostUser.getProperty("url").toString());
				listInfoPost.add((String)entityPostUser.getProperty("body").toString());
				listPost.put(entityPostUser.getKey().getId(), listInfoPost);

			}

		} else {

			response.sendRedirect(url);
		}

		request.setAttribute("infoUser", infoUser);
		request.setAttribute("listPost", listPost);

		this.getServletContext().getRequestDispatcher("/postuser.jsp").forward(request, response);

	}

}