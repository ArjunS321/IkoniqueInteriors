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
		String type2=request.getParameter("product");
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
		else if(type2.equalsIgnoreCase("forproduct")) {
			int productid = Integer.parseInt(request.getParameter("productId"));
			String productname = request.getParameter("productname");
			String productprice = request.getParameter("productprice");
			String productquantity = request.getParameter("productquantity");
			String productweight = request.getParameter("productweight");
			int productownerid = Integer.parseInt(request.getParameter("ownername"));
			String produdesc = request.getParameter("pdescription");
			int categoryid = Integer.parseInt(request.getParameter("category"));
			int subcatgoryid = Integer.parseInt(request.getParameter("subcategory"));
			int offerid = Integer.parseInt(request.getParameter("offer"));
			int productstatus = Integer.parseInt(request.getParameter("exampleRadios2"));
			
			Product product = new Product();
			product.setProduct_id(productid);
			product.setProduct_name(productname);
			product.setProduct_price(productprice);
			product.setProduct_quantity(productquantity);
			product.setProduct_weight(productweight);
			product.setProduct_owner_id(productownerid);
			product.setProduct_desc(produdesc);
			product.setCategory_id(categoryid);
			product.setSubcategory_id(subcatgoryid);
			product.setOfferid(offerid);
			product.setStatus(productstatus);
			
			message = userimpl.updateProductDetails(product);
			
			if(message!=null)
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("productTable.jsp");
				requestdispatcher.forward(request, response);
			}
			else
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("editproducts.jsp");
				requestdispatcher.forward(request, response);
			}
		}
			
	}

}
