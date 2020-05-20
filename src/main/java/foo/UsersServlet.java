package foo;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//  see https://cloud.google.com/appengine/docs/standard/java/users

/* Copyright 2016 Google Inc.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

//[START users_API_example]


import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

//With @WebServlet annotation the webapp/WEB-INF/web.xml is no longer required.
@WebServlet(
   name = "UserAPI",
   description = "UserAPI: Login / Logout with UserService",
   urlPatterns = "/userapi"
)
public class UsersServlet extends HttpServlet {

 @Override
 public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
   UserService userService = UserServiceFactory.getUserService();

   String thisUrl = req.getRequestURI();

   resp.setContentType("text/html");
   if (req.getUserPrincipal() != null) {
			resp.getWriter().println("<p>Bonjour " + req.getUserPrincipal().getName() + "! Etes-vous sûr de vouloir vous déconnecter ? Pour confirmer, cliquer sur le bouton. <a href=\""
					+ userService.createLogoutURL(thisUrl) + "\"><button class=\"btn-danger\">Déconnexion</button></a>.</p>");
   } else {
			resp.getWriter()
					.println("<p>Please <a href=\"" + userService.createLoginURL(thisUrl) + "\">sign in</a>.</p>");
   }
 }
}
//[END users_API_example]