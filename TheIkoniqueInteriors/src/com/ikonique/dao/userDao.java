package com.ikonique.dao;

import java.sql.Connection;
import java.util.List;

import com.ikonique.bean.Area;
import com.ikonique.bean.User;

public interface userDao {

	public int insertUserDetails(User user, Connection connection);

	public int insertDesignerDetails(User user, Connection connection);

	public List<Area> selectArea(Connection connection);

	public User selectUserDetails(String email, String password, Connection connection);

	public String fetchAreaName(int id, Connection connection);

	public int modifyUserDetails(User user, Connection connection);

	public int removeUserDetails(int user_id, Connection connection);

	public User fetchEmailId(String email, Connection connection);

	public int modifyPass(Connection connection, String cpass, int user_id);

	public List<User> selectDetails(Connection connection);

	
	

	

	

}
