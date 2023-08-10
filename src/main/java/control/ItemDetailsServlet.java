package control;

import DAO.CategoryDAO;
import DAO.CategoryDAOImp;
import model.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ItemDetails")
public class ItemDetailsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int itemId = Integer.parseInt(request.getParameter("itemId"));
        CategoryDAO categoryDAO = new CategoryDAOImp();
        Item item = categoryDAO.getItemById(itemId); // Implement this method in your DAO
        
        if (item != null) {
            request.setAttribute("item", item);
            request.getRequestDispatcher("/ItemDetails.jsp").forward(request, response);
        } else {
            // Handle item not found case
            response.sendRedirect(request.getContextPath() + "/category");
        }
    }
}
