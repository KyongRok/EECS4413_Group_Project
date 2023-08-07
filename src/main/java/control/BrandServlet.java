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
@WebServlet("/itemsByBrand")
public class BrandServlet extends HttpServlet {
    private CategoryDAO categoryDAO; // Make sure you have a CategoryDAO instance

    @Override
    public void init() throws ServletException {
        categoryDAO = new CategoryDAOImp();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String brand = request.getParameter("brand");
        String sort = request.getParameter("sort"); // Get sorting parameter

        if (brand != null && !brand.isEmpty()) {
            List<Item> items = categoryDAO.getItemsByBrand(brand);
            request.setAttribute("brand", brand);
            request.setAttribute("items", items);
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
            request.getRequestDispatcher("/itemsByBrand.jsp").forward(request, response);
        } else {
        	
        }
        
    }

   
}