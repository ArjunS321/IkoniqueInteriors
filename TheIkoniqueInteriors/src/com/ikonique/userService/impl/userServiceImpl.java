package com.ikonique.userService.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.ikonique.bean.User;
import com.ikonique.dao.userDao;
import com.ikonique.dao.impl.userDaoImpl;


public class userServiceImpl {

	public String saveUserDetails(User user) {
		
		userDao userDao = new userDaoImpl();
		Connection connection=getConnection();
		String msg=null;
		
		int insertedUserId= userDao.insertUserDetails(user,connection);
		if(insertedUserId>0) {
			msg="Registration Is Successfully";
		}
		else
		{
			msg="Registration Failed";
		}

		return msg;
	}
	public static Connection getConnection() 
	{
		Connection connection=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		String connectionUrl = "jdbc:mysql://localhost:3306/ikoniqueschema";
		String connectionUsername = "root";
		String connectionPassword = "root";

		
			connection= DriverManager.getConnection(connectionUrl, connectionUsername, connectionPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;

	}

}
