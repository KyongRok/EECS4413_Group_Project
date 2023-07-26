package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String todo = request.getParameter("todo");
		
		//if button pressed is login make new session and try login
		if(todo.equals("login")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			HttpSession session = request.getSession(true);
			
			//if user login-info is correct
			synchronized(session) {
				//in the session, get user info, cart and set it as attribute
				//then send the user over to shop.html.
			}
			//from DB, take username and test, if it exits, check password
			//if username is not in DB, give client message, username does not exists.
			//if password is wrong, give client message, invalid password.
			//if all correct, bring them to shop page with session created
			//we connect our this session with cart, order and client information from DB
			
		}else if(todo.equals("register")) {
			//else if button pressed is register, bring client to register page.
			//register servlet.
		}
		
	}

}
