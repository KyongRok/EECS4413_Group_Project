package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CategoryDAOImp;
import model.Item;
import model.User_info;
import model.sale;

/**
 * Servlet implementation class profileServlet
 */
@WebServlet("/ProfileServlet")
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
		
		HttpSession session = request.getSession();
		 synchronized (session) {
			 User_info u = (User_info) session.getAttribute("user");
			 String admin = (String) session.getAttribute("admin");
			 if(u == null && admin == null) {
				 	
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}else if(u == null && admin.equals("yes")){
					//change this.
					CategoryDAOImp categoryDAO = new CategoryDAOImp();
					List<sale> sales = categoryDAO.getsales();
					session.setAttribute("sales", sales);
					request.getRequestDispatcher("sales.jsp").forward(request, response);
				}else {
					
					request.getRequestDispatcher("profile.jsp").forward(request, response);
				}
		 }
		
	}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward to the profile.jsp page for GET requests
    	doPost(request, response);
    }

}
