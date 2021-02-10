package com.ikonique.userService.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import com.ikonique.bean.Area;
import com.ikonique.bean.User;
import com.ikonique.dao.userDao;
import com.ikonique.dao.impl.userDaoImpl;
import com.ikonique.util.Main;


public class userServiceImpl {
	
	userDao userDao = new userDaoImpl();
	
	public String saveUserDetails(User user) {
		
		
		Connection connection=getConnection();
		String msg=null;
		
		int insertedUserId= userDao.insertUserDetails(user,connection);
		if(insertedUserId>0) {
			
			Main main=new Main();
			main.sendFromGMail("ikoniqueinteriors@gmail.com", "SAM@616263", new String[] {user.getEmail()}, "Registration Successfull", "Welcome to the world of THE IKONIQUE INTERIORS");
			
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
	public String saveDesignerDetails(User user) {
		userDao userDao = new userDaoImpl();
		Connection connection=getConnection();
		String msg=null;
		
		int insertedUserId= userDao.insertDesignerDetails(user,connection);
		if(insertedUserId>0) {
			msg="Registration Is Successfully";
		}
		else
		{
			msg="Registration Failed";
		}

		return msg;

	}
	public List<Area> fatcharea() {
		Connection connection=getConnection();
		return userDao.selectArea(connection);
	
	}
	public User getUser(String email, String password) {
		Connection connection=getConnection();
		return userDao.selectUserDetails(email,password,connection);
		
	}
	public String getAreaName(int id) {
		Connection connection=getConnection();
		return userDao.fetchAreaName(id,connection);
		
	}
	public String updateUserDetails(User user) {
		Connection connection=getConnection();
		int updateCount=0;
		String msg=null;
		updateCount=userDao.modifyUserDetails(user,connection);
		if(updateCount>0) {
			msg="Updation Successfully";
		}
		else
		{
			msg="Updation Failed";
		}
		return msg;
	}
	public String deleteUserDetails(int user_id) {
		Connection connection=getConnection();
		int deleteCount=0;
		String msg=null;
		deleteCount=userDao.removeUserDetails(user_id,connection);
		if(deleteCount>0) {
			msg="Deletion Successfully";
		}
		else
		{
			msg="Deletion Failed";
		}
		return msg;
		
		
	}
	public User getEmailId(String email) {
		// TODO Auto-generated method stub
		Connection connection=getConnection();
		return userDao.fetchEmailId(email,connection);
	}
	public String updatePass(String cpass, int user_id) {
		String msg=null;
		Connection connection=getConnection();
		int count=0;
		count=userDao.modifyPass(connection,cpass,user_id);
		if(count>0) {
			msg="Updation Of Password Successfully";
		}
		else
		{
			msg="Updation Of Password Failed";
		}
		
		return msg;
		
	}
	
	public List<User> fetchuserdetails()
	{
		
		
		try(Connection connection=getConnection();)
		{
			 return userDao.selectDetails(connection);
			
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	

}
