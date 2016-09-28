
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Bhpost;
import Model.Bhuser;
import customTools.DBBullHorn;
//import UserData.User;
import customTools.DBUser;

/**
 * Servlet implementation class Process
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Login Succesful");
		//doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		User user = new User();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
//		user.setPassword(password);
//		user.setUsername(username);
//		//PrintWriter out = response.getWriter();
		String nextUrl;
		Bhuser user = null;
		List<Bhpost> posts = null;
		
		
		if(DBUser.isValidUser(username, password)){
			user = DBUser.getUserByEmail(username);
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			posts = DBBullHorn.bhPost();
			session.setAttribute("posts", posts);
			nextUrl = "/Home.jsp";	
		}
		else{
			response.getWriter().append("Invalid username/password");
			nextUrl = "/Login.html";
		}
		response.sendRedirect(request.getContextPath()+nextUrl);
	}

}
