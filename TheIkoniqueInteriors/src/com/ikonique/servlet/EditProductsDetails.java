package com.ikonique.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ikonique.bean.Category;
import com.ikonique.userService.impl.userServiceImpl;

/**
 * Servlet implementation class EditProductsDetails
 */
public class EditProductsDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       userServiceImpl us = new userServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProductsDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String name = request.getParameter("exampleRadios1");
		//String message = null;
		//if(name.equalsIgnoreCase("category"))
		//{
			String categoryid = request.getParameter("categoryid");
			Category category = us.fetchCategoryDetails(categoryid);
			request.setAttribute("category", category);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("editproducts.jsp");
			requestDispatcher.forward(request, response);
//		}
//		else if(name.equalsIgnoreCase("subcategory"))
//		{
//			
//		}
//		else if(name.equalsIgnoreCase("offer"))
//		{
//			
//		}
//		else
//		{
//			
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
