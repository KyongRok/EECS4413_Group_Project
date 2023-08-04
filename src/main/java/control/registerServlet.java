package control;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAOImp;
import model.User_info;
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("username"));
        String fn = request.getParameter("fname");
        String ln = request.getParameter("lname");
        String email = request.getParameter("email");
        String password = request.getParameter("password_reg");

        UserDAOImp userDAO = new UserDAOImp();
        userDAO.insertNewUser(id, fn, ln, email, password);

        User_info user = userDAO.loginUser(email, password);
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("Home.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
