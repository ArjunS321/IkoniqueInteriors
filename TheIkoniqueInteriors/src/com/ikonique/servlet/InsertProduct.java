package com.ikonique.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ikonique.bean.Product;
import com.ikonique.userService.impl.userServiceImpl;

/**
 * Servlet implementation class InsertProduct
 */
public class InsertProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       userServiceImpl us=new userServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertProduct() {
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
		
		String productname=request.getParameter("pname");
		String productprice=request.getParameter("pprice");
		String productquantity=request.getParameter("pquantity");
		String productweight=request.getParameter("pweight");
		String productowner=request.getParameter("owner");
		
		Product product=new Product();
		product.setProduct_name(productname);
		product.setProduct_price(productprice);
		product.setProduct_quantity(productquantity);
		product.setProduct_weight(productweight);
	//	product.setProduct_owner_id(productownerid);
		
		String msg=us.insertProductDetails(product);
		System.out.println(msg);
	}

}
