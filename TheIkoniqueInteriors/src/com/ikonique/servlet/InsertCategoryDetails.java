package com.ikonique.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ikonique.bean.Category;
import com.ikonique.bean.Product;
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
		else if(name.equalsIgnoreCase("subcategory"))
		{
			String subcategoryname = request.getParameter("scname");
			String categoryname = request.getParameter("category");
			int categoryid = Integer.parseInt(categoryname);
			SubCategory subcategory = new SubCategory();
			subcategory.setSub_category_name(subcategoryname);
			subcategory.setCategory_id(categoryid);
			
			message = serviceimpl.insertSubCategoryDetails(subcategory);
			
			if(message!=null)
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("subcategoryTable.jsp");
				requestdispatcher.forward(request, response);
			}
			else
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("insertproduct.jsp");
				requestdispatcher.forward(request, response);
			}
		}
		else
		{
			String productname=request.getParameter("pname");
			String productprice=request.getParameter("pprice");
			String productqty=request.getParameter("pquentity");
			String productweight=request.getParameter("pweight");
			String produtdesc=request.getParameter("pdescription");
			String productcategory=request.getParameter("category");
			int categoryid = Integer.parseInt(productcategory);
			String productsubcategory=request.getParameter("subcategory");
			int subcategoryid = Integer.parseInt(productsubcategory);
			Product product=new Product();
			product.setProduct_name(productname);
			product.setProduct_price(productprice);
			product.setProduct_quantity(productqty);
			product.setProduct_weight(productweight);
			product.setProduct_desc(produtdesc);
			product.setCategory_id(categoryid);
			product.setSubcategory_id(subcategoryid);
			message=serviceimpl.insertProductDetails(product);
			
			if(message!=null)
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("productTable.jsp");
				requestdispatcher.forward(request, response);
			}
			else
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("insertproduct.jsp");
				requestdispatcher.forward(request, response);
			}
		}
		
		
	}

}
