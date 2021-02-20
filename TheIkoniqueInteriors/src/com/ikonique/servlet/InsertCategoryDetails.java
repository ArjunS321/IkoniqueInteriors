package com.ikonique.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ikonique.bean.Category;
import com.ikonique.bean.SubCategory;
import com.ikonique.userService.userService;
import com.ikonique.userService.impl.userServiceImpl;

/**
 * Servlet implementation class InsertCategoryDetails
 */
public class InsertCategoryDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       userServiceImpl serviceimpl = new userServiceImpl(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCategoryDetails() {
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
		// TODO Auto-generated method stub
		String name = request.getParameter("exampleRadios1");
		String message = null;
		if(name.equalsIgnoreCase("category"))
		{
			String categoryname = request.getParameter("cname");
			Category category = new Category();
			category.setCategory_name(categoryname);
			message = serviceimpl.insertCategoryDetails(category);
		}
		else if(name.equalsIgnoreCase("subcategory"))
		{
			String subcategoryname = request.getParameter("scname");
			String categoryname = request.getParameter("category");
			int categoryid = Integer.parseInt(categoryname);
			SubCategory subcategory = new SubCategory();
			subcategory.setSub_category_name(subcategoryname);
			subcategory.setCategory_id(categoryid);
			
			message = serviceimpl.insertSubCategoryDetails(subcategory);
		}
		else
		{
			
		}
		if(message!=null)
		{
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("categoryTable.jsp");
			requestdispatcher.forward(request, response);
		}
		else
		{
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("insertproduct.jsp");
			requestdispatcher.forward(request, response);
		}
		
	}

}
