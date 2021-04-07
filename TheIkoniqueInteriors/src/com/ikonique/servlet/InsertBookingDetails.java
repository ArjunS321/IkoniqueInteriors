package com.ikonique.servlet;

import java.awt.print.Book;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ikonique.bean.Booking;
import com.ikonique.bean.BookingInfo;
import com.ikonique.bean.User;
import com.ikonique.userService.impl.userServiceImpl;

/**
 * Servlet implementation class InsertBookingDetails
 */
public class InsertBookingDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       userServiceImpl us = new userServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBookingDetails() {
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
		HttpSession httpSession = request.getSession(false);
		User user = null;   
		if(null!=httpSession){
		   user = (User)httpSession.getAttribute("loginBean");
	   }

//		Date date=new Date();
//	  	java.sql.Date sqldate=new java.sql.Date(date.getTime());
		
//		Date cd = null;
//		try
//		{
//			String bookdate = request.getParameter("bookdate");
//			date = new SimpleDateFormat("yyyy-mm-dd").parse(request.getParameter("bookdate"));
//			 DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
//			 cd = df.parse(bookdate);
//			 System.out.println("date is:-"+cd);
//		} 
//		catch (ParseException e)
//		{
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} 
	  	int designerid = Integer.parseInt(request.getParameter("designerid"));
	  	int visitingfees = Integer.parseInt(request.getParameter("visitingfees"));
	  	
	  	Booking booking = new Booking();
	  	booking.setDesignerid(designerid);
//	  	booking.setBookingdate((java.sql.Date) cd);
	  	booking.setVfees(visitingfees);
	  	booking.setUserid(user.getUser_id());
	  	
	  	int id = us.insertBookingDetails(booking);
	  	System.out.println("id is:"+id);
	  	/*----------------------------------------*/
	  	String fname = request.getParameter("fname");
	  	String lname = request.getParameter("lname");
	  	String address = request.getParameter("address");
	  	String mno = request.getParameter("mno");
	  	String email = request.getParameter("email");
	  	
	  	BookingInfo bookingInfo = new BookingInfo();
	  	bookingInfo.setBookingid(id);
	  	bookingInfo.setBookingfname(fname);
	  	bookingInfo.setBookinglname(lname);
	  	bookingInfo.setBookingaddress(address);
	  	bookingInfo.setBookingcno(mno);
	  	bookingInfo.setBookingemail(email);
//	  	bookingInfo.setBookingdate((java.sql.Date) date);
	  	String msg2 = us.insertBookingInfo(bookingInfo);
	  	if(msg2.equalsIgnoreCase("Insertion Is Successfully"))
	  	{
	  		
	  	}
	  	else
	  	{
	  		
	  	}
	}

}
