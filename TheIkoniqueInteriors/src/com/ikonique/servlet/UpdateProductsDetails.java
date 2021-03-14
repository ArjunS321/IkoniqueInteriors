package com.ikonique.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ikonique.bean.Category;
import com.ikonique.bean.SubCategory;
import com.ikonique.userService.impl.userServiceImpl;

/**
 * Servlet implementation class UpdateProductsDetails
 */
public class UpdateProductsDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       userServiceImpl userimpl = new userServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductsDetails() {
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
		
		String type=request.getParameter("category");
		String type1=request.getParameter("subcategory");
		String message = null;
		
		if(type.equalsIgnoreCase("forcategory")) {
			
			int categoryid = Integer.parseInt(request.getParameter("categoryId"));
			String categoryname = request.getParameter("cname");
			int categorystatus = Integer.parseInt(request.getParameter("exampleRadios2"));
			Category category = new Category();
			category.setCategory_id(categoryid);
			category.setCategory_name(categoryname);
			category.setStatus(categorystatus);
			
			message = userimpl.updateCategoryDetails(category);
			
			if(message!=null)
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("categoryTable.jsp");
				requestdispatcher.forward(request, response);
			}
			else
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("editproducts.jsp");
				requestdispatcher.forward(request, response);
			}
		
		}
		else if(type1.equalsIgnoreCase("forsubcategory")) {
			int subcategoryid = Integer.parseInt(request.getParameter("subcategoryId"));
			String subcategoryname = request.getParameter("subcategoryname");
			int subcategorystatus = Integer.parseInt(request.getParameter("exampleRadios2"));
			int categoryid =Integer.parseInt(request.getParameter("category"));
			
			SubCategory subcategory=new SubCategory();
			subcategory.setCategory_id(categoryid);
			subcategory.setSub_category_id(subcategoryid);
			subcategory.setSub_category_name(subcategoryname);
			subcategory.setStatus(subcategorystatus);
			
			message = userimpl.updateSubCategoryDetails(subcategory);
			
			if(message!=null)
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("subcategoryTable.jsp");
				requestdispatcher.forward(request, response);
			}
			else
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("editproducts.jsp");
				requestdispatcher.forward(request, response);
			}
			
		}
		else {
			
		}
			
	}

}
