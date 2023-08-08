package control;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import DAO.CategoryDAO;
import DAO.CategoryDAOImp;
import model.Item;
@WebServlet("/category")
public class CategoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String category = request.getParameter("category");
        String gender = request.getParameter("gender"); // Add gender parameter
        CategoryDAO categoryDAO = new CategoryDAOImp();
        System.out.println(gender);
        String sort = request.getParameter("sort"); // Get sorting parameter
        if(gender != null) {
        	gender.toLowerCase();
        }
        List<Item> items;

        if (category != null && !category.isEmpty() && (gender == null)) {
            items = categoryDAO.searchByCategorieskeyword(category);
        } else if (gender != null && (gender.equals("women") || gender.equals("men"))) {
 
            items = categoryDAO.searchByCategoryNameAndGender(category, gender);
        } else {
            response.sendRedirect(request.getContextPath() + "/Home.jsp");
            return;
        }
        if (sort != null) {
            switch (sort) {
                case "nameAToZ":
                    items = categoryDAO.sortAlpAToZ(items);
                    break;
                case "nameZToA":
                    items = categoryDAO.sortAlpZToA(items);
                    break;
                case "priceLowToHigh":
                    items = categoryDAO.sortPriceLowToHigh(items);
                    break;
                case "priceHighToLow":
                    items = categoryDAO.sortPriceHighToLow(items);
                    break;
                default:
                    // Handle other cases or default sorting here
                    break;
            }
        }
        request.setAttribute("items", items);
        request.getRequestDispatcher("/category.jsp").forward(request, response);
    }
}
