package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CategoryDAO;
import DAO.CategoryDAOImp;
import model.Cart;
import model.User_info;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		 synchronized (session) {
			 User_info u = (User_info) session.getAttribute("user");
			 
			 if(u == null) {
				 	
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}else {
					
					Cart cart = (Cart) session.getAttribute("cart");
					int target = Integer.valueOf(request.getParameter("item_id"));
					CategoryDAO d = new CategoryDAOImp();
					cart.addToCart(d.getItemById(target));
					for(int i = 0; i < cart.getCartItems().size(); i++) {
						System.out.println(cart.getCartItems().get(i).getItemName());
					}
					request.getRequestDispatcher("/checkOut.jsp").forward(request, response);
				}
		 }
	}

}
