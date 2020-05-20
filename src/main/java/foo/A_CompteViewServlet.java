package foo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;

import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.KeyRange;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.repackaged.com.google.common.hash.HashCode;

//With @WebServlet annotation the webapp/WEB-INF/web.xml is no longer required.
@WebServlet(name = "UserCompteView", description = "Vue de l'utilisateur post", urlPatterns = "/view")

public class A_CompteViewServlet extends HttpServlet {

	@SuppressWarnings("unchecked")
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");	
		
		Integer compteur = 0;
		Boolean trouve = false;
		Integer i,j = 0;
		
		ArrayList<String> FriendUser = new ArrayList<String>();
		
		foo.A_ConnexionServlet connect = new foo.A_ConnexionServlet();
		String user = connect.getNicknameUser();
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		

		/* Affichage de la liste d'utilisateurs -> Pas encore amis */
		
		/*****************************************************************************************/
		
		Query z = new Query("Friend").setFilter(new FilterPredicate("lastName", FilterOperator.EQUAL, user));
		PreparedQuery pqq = datastore.prepare(z);
		List<Entity> resultat = pqq.asList(FetchOptions.Builder.withDefaults());
		
		for (Entity entityy : resultat) {
			FriendUser = (ArrayList<String>) entityy.getProperty("friends");
		}
		
		Query q = new Query("Friend");
		PreparedQuery pq = datastore.prepare(q);
		List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());
		
		ArrayList<String> listesUser = new ArrayList<String>();
		if (FriendUser != null) {
			for (Entity entity : result) {
				if (compteur <= 20) {
					for  (i = 0; i < FriendUser.size(); i++) { // Faire un while à la place
						if (entity.getProperty("lastName").equals(FriendUser.get(i))) {
							trouve = true;
						} 
					}
					if (trouve == false) {
						compteur = compteur + 1;
						listesUser.add((String) entity.getProperty("lastName"));
					} 
					trouve = false;				
				}
			}
		} else {
			for (Entity entity : result) {
				if (compteur <= 20) {
						compteur = compteur + 1;
						listesUser.add((String)entity.getProperty("lastName"));
				}
			}
		}
			
		listesUser.remove(user);
		
		/***********************************************************************************************/
		
		/* Affichage de la timeline des utilisateurs */
		
		/**********************************************************************************************/
		
		Query pa = new Query("Post");
		PreparedQuery fpa = datastore.prepare(pa);
		List<Entity> resultatPost = fpa.asList(FetchOptions.Builder.withDefaults());
		
		HashMap<Long, List<String>> listePosts = new HashMap<Long, List<String>>();
		
		List<String> postLiked = new ArrayList<String>();
		
		for (Entity entityLike : resultat) {
			if(entityLike.getProperty("LikedPost") != null) {
				postLiked = (ArrayList<String>) entityLike.getProperty("LikedPost");
			}
			
		}
		
		for(Entity entityPost: resultatPost) {
			//if(!(entityPost.getProperty("owner").equals(user))) {
				if (FriendUser != null) {
					for (int a = 0; a < FriendUser.size(); a++) {
					
						if(entityPost.getProperty("owner").equals(FriendUser.get(a))||(entityPost.getProperty("owner").equals(user))) {
							List<String> post = new ArrayList<>();
							post.add((String)entityPost.getProperty("url"));
							post.add((String)entityPost.getProperty("owner"));
							post.add((String)entityPost.getProperty("body"));
							post.add((String)entityPost.getProperty("date").toString());
							post.add((String)entityPost.getProperty("likec").toString());
							listePosts.put(entityPost.getKey().getId(), post);
							
							if(postLiked.size() != 0) {
								
								for (String element : postLiked) {
								
									
									Long idPostVu = entityPost.getKey().getId();
									String StridPost = Long.toString(idPostVu);
									
									if(element.equals(StridPost)) {
										post.add((String)"true");
									} 
									
								}
								
							}
							
						}
					}
							
				}				
				
			//}
		}
		
		
		/********************* Commentaire *******************************/
				
		Query paC = new Query("Comment");
		PreparedQuery fpaC = datastore.prepare(paC);
		List<Entity> resultatComment = fpaC.asList(FetchOptions.Builder.withDefaults());
	
	
		HashMap<Long, List<String>> listeCommentC = new HashMap<Long, List<String>>();
		
		for(Entity entityPost: resultatPost) {
			
			
			
			for(Entity entityComment : resultatComment) {
			
					List<String> listComment = new ArrayList<>();
					
					/************ Test commentaire affichage correct ***********/					
					Long var = (Long) entityComment.getProperty("idPostComment");
					String varString = Long.toString(var);
					
					/**************************************************************/
					listComment.add((String)varString);
					listComment.add((String)entityComment.getProperty("owner").toString());
					listComment.add((String)entityComment.getProperty("commentPost"));
					
					listeCommentC.put(entityComment.getKey().getId(), listComment);			
				
			}

							
		}
		
		req.setAttribute("listeUsers", listesUser);
		req.setAttribute("listePosts", listePosts);
		req.setAttribute("listeCommentC", listeCommentC);
		
		this.getServletContext().getRequestDispatcher("/compteView.jsp").forward(req, resp);
		
		
		//response.sendRedirect("/view");
		
	/*	String message = "Transmission de variables : OK !";
		req.setAttribute("test", message);
		this.getServletContext().getRequestDispatcher("/compteView.jsp").forward(req, resp); */

	}

}

//[END users_API_example]