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
@WebServlet("/shop")
public class ShopServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

                CategoryDAOImp categoryDAO = new CategoryDAOImp();
                List<Item> items = categoryDAO.getAllCategories(); // Retrieve all items
                String sort = request.getParameter("sort"); 
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
                request.getRequestDispatcher("/shop.jsp").forward(request, response);
            }
        }


