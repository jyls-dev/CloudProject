package foo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//With @WebServlet annotation the webapp/WEB-INF/web.xml is no longer required.
@WebServlet(name = "ProfilView", description = "Vue du profil de l'utilisateur", urlPatterns = "/profil")

public class A_ProfilViewServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		String message = "Transmission de variables : OK !";
		req.setAttribute("test", message);
		this.getServletContext().getRequestDispatcher("/profil.jsp").forward(req, resp);

	}

}

//[END users_API_example]
