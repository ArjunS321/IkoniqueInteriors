package com.ikonique.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ikonique.bean.User;
import com.ikonique.util.*;

/**
 * Servlet implementation class GenarateOtp
 */
public class GenerateOtpPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GenerateOtpPass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
//		String mail = request.getParameter("email");
//		User user = new User();
//		user.setEmail(mail);
//		
//		HttpSession httpSession = request.getSession();
//		httpSession.setAttribute("forgotpass", user);
//		
//		GenerateOtp otp = new GenerateOtp();
//		String otpstring = otp.generateOTP();
//		
//		Main main = new Main();
//        main.sendOtp("ikoniqueinteriors@gmail.com", "SAM@616263", new String[] {user.getEmail()}, "OTP FOR FORGOT-PASSWORD", otpstring);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String mail = request.getParameter("email");
		User user = new User();
		user.setEmail(mail);
		
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("forgotpass", user);
		
		GenerateOtp otp = new GenerateOtp();
		String otpstring = otp.generateOTP();
		
		Main main = new Main();
        main.sendOtp("ikoniqueinteriors@gmail.com", "SAM@616263", new String[] {user.getEmail()}, "OTP FOR FORGOT-PASSWORD", otpstring);
	}

}
