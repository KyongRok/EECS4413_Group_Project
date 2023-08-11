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

@WebServlet("/RemoveCartItemServlet")
public class RemoveCartItemServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        synchronized (session) {
            User_info u = (User_info) session.getAttribute("user");

            if (u == null) {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                Cart cart = (Cart) session.getAttribute("cart");
                int itemId = Integer.parseInt(request.getParameter("itemId"));

                CategoryDAO d = new CategoryDAOImp();
                cart.removeFromCart(d.getItemById(itemId));

                request.getRequestDispatcher("/ShowCart.jsp").forward(request, response);
            }
        }
    }
}
