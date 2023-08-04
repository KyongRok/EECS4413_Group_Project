package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User_info;

/**
 * Servlet implementation class profileServlet
 */
@WebServlet("/profileServlet")
public class profileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public profileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("profile");
		HttpSession session = request.getSession();
		 synchronized (session) {
			 User_info u = (User_info) session.getAttribute("user");
			 
			 if(u == null) {
				 	
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}else {
					
					request.getRequestDispatcher("profile.jsp").forward(request, response);
				}
		 }
		
	}

}