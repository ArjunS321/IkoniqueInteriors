package com.ikonique.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ikonique.bean.Order;
import com.ikonique.bean.User;
import com.ikonique.userService.impl.userServiceImpl;

/**
 * Servlet implementation class InsertOrderDetails
 */
public class InsertOrderDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       userServiceImpl us=new userServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertOrderDetails() {
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
		HttpSession httpSession = request.getSession(false);
		User user = null;   
		if(null!=httpSession){
		   user = (User)httpSession.getAttribute("loginBean");
	   }
		Date date=new Date();
	  	java.sql.Date sqldate=new java.sql.Date(date.getTime());
	  	
	  	
	  	String fname=request.getParameter("fname");
	  	String lname=request.getParameter("lname");
	  	double amount=Double.parseDouble(request.getParameter("total"));
	  	String cno=request.getParameter("mno");
	  	String address=request.getParameter("address");
	  	String email=request.getParameter("email");
	  	
//	  	System.out.println(fname);
	  	System.out.println(lname);
	  	System.out.println(amount);
	  	System.out.println(cno);
	  	System.out.println(address);
	  	System.out.println(email);
	  	System.out.println(user.getUser_id());
	  	System.out.println(sqldate);
	  	
		Order order=new Order();
		order.setFirstname(fname);
		order.setLastname(lname);
		order.setContactnum(cno);
		order.setAmount(amount);
		order.setAddress(address);
		order.setEmail(email);
		order.setOrderdate(sqldate);
		order.setUserid(user.getUser_id());
		
		int id = us.insertOrderDetails(order);
		System.out.println("insertedId:"+id);
		
		
	  	


	  	
	}
}
