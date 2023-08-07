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

@WebServlet("/items")
public class ItemServlet extends HttpServlet {
    private CategoryDAO categoryDAO = new CategoryDAOImp();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Item> items = categoryDAO.getAllCategories();
        String filter = request.getParameter("filter");
        String sort = request.getParameter("sort");

        if (filter != null && filter.equals("priceHighToLow")) {
            items = categoryDAO.sortPriceHighToLow(items);
        } else if (filter != null && filter.equals("priceLowToHigh")) {
            items = categoryDAO.sortPriceLowToHigh(items);
        }

        if (sort != null && sort.equals("nameAToZ")) {
            items = categoryDAO.sortAlpAToZ(items);
        } else if (sort != null && sort.equals("nameZToA")) {
            items = categoryDAO.sortAlpZToA(items);
        }

        request.setAttribute("items", items);
        request.getRequestDispatcher("/shop.jsp").forward(request, response);
    }
}