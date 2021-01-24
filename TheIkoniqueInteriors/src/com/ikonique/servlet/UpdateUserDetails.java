package com.ikonique.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ikonique.bean.User;
import com.ikonique.userService.impl.userServiceImpl;

/**
 * Servlet implementation class UpdateUserDetails
 */
public class UpdateUserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	userServiceImpl u1=new userServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user =new User();
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String contactno=request.getParameter("contactno");
		String exampleRadios = request.getParameter("exampleRadios");
		try {
			int user_id=Integer.parseInt(request.getParameter("user_id"));
			user.setUser_id(user_id);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		user.setFirstname(fname);
		user.setLastname(lname);
		user.setEmail(email);
		user.setAddress(address);
		user.setMobileno(contactno);
		user.setGender("exampleRadios");
		
		String msg=u1.updateUserDetails(user);
		System.out.println(msg);
		HttpSession httpSession = request.getSession(false);
		httpSession.setAttribute("loginBean", user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("customer.jsp");
		dispatcher.forward(request, response);
		
		
		
	}

}