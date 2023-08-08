package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DAO.UserDAOImp;
import model.Cart;
import model.User_info;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAOImp userDAO = new UserDAOImp();
        int login_flag = userDAO.user_login(email, password);

        if (login_flag == 1) {
            User_info user = userDAO.get_userInfo(email, password);
            Cart cart = new Cart();
            HttpSession session = request.getSession(true);
            session.setAttribute("cart", cart);
            session.setAttribute("user", user);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else {
            // User does not exist or invalid credentials
            request.setAttribute("loginError", "Invalid email or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
