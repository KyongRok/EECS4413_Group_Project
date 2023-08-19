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

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
    private static int paymentCounter = 0; // To keep track of payment requests
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        CategoryDAO d = new CategoryDAOImp();
       
        
        String cardNumber = request.getParameter("credit_card");
        String cvvStr = request.getParameter("cvv");
        int cvv = 0;
        try {
            cvv = Integer.parseInt(cvvStr);
        } catch (NumberFormatException e) {
            cvv = -1; // Invalid CVV
        }
        
        
        boolean paymentApproved = true;
        
        // Dummy algorithm: Deny every 3rd payment request
        if (paymentCounter == 2) {
            paymentApproved = false;
            paymentCounter = 0;
       }else {
    	   paymentCounter++;
    	   
       }

        if (paymentApproved) {
        	d.insertIntoSales(cart.getCartItems());
            cart = new Cart();
            session.setAttribute("cart", cart);
            request.setAttribute("paymentMessage", "Order Successfully Completed.");
        } else {
            request.setAttribute("paymentMessage", "Credit Card Authorization Failed.");
       }
  
        request.getRequestDispatcher("/PaymentResult.jsp").forward(request, response);
    }
}
