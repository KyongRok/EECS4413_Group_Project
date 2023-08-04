package control;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
    public registerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    	//int id = Integer.parseInt(request.getParameter("username"));
    	System.out.println("hello");
    	String fn = request.getParameter("fname");
        String ln = request.getParameter("lname");
        String email = request.getParameter("email");
        String password = request.getParameter("password_reg");
        
        UserDAOImp userDAO = new UserDAOImp();
        User_info u = new User_info();
        u.setFirst_name(fn);
        u.setLast_name(ln);
        u.setPassword(password);
        u.setEmail(email);
        userDAO.insertNewUser(fn, ln, email, password);
        u.setUser_id(userDAO.get_userInfo(email, password).getUserId());
        int login_flag = userDAO.user_login(email, password);
        if(login_flag == 1) {
        	HttpSession session = request.getSession();
            session.setAttribute("user", u);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
            //send to homeServlet and in there we check the user info and -> show give a somethign
            //that user can see and tell that they are logined
            
        }
    }
}
