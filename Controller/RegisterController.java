package Controller;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.UserDaoImp;
import BEAN.User;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		String useremail=request.getParameter("useremail");
		String userpassword=request.getParameter("userpassword");
		String userphone=request.getParameter("userphone");
		String useraddress=request.getParameter("useraddress");

		


		User user=new User(username,useremail,userpassword,userphone,useraddress,"normal");
	    UserDaoImp u=new UserDaoImp();
	    boolean isAlreadyUser=u.isAlreadyUser(useremail);
	    if(isAlreadyUser==true)
	    {
	    	session.setAttribute("message","User is Already registered with this Email..!");
	        response.sendRedirect("Register.jsp");
	    }
	    
	    else
	    {
	    	boolean flag=u.addUser(user);
			
		    if(flag==true)
		    {
		    	session.setAttribute("message","Registeration Successfull..!!!");
		        response.sendRedirect("Register.jsp");
		    }
		    
		    else
		    {
		    	session.setAttribute("message","Registration Failed..!!!");
		    	response.sendRedirect("Register.jsp");
		    }
	    }
	    
	}

}
