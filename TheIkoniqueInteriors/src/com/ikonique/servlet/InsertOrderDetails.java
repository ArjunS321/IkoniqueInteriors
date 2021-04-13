package com.ikonique.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ikonique.bean.User;

/**
 * Servlet implementation class InsertOrderDetails
 */
public class InsertOrderDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
	  	double amount=Double.parseDouble(request.getParameter("total"));
	  	
	  	String select[] = request.getParameterValues("sel"); 

	  	if (select != null && select.length != 0) {

	  	for (int i = 0; i < select.length; i++) {
	  	out.println(select[i]);
	}

}
