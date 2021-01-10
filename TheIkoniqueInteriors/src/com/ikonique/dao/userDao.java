package com.ikonique.dao;

import java.sql.Connection;
import java.util.List;

import com.ikonique.bean.Area;
import com.ikonique.bean.User;

public interface userDao {

	public int insertUserDetails(User user, Connection connection);

	public int insertDesignerDetails(User user, Connection connection);

	public List<Area> selectArea(Connection connection);

	

}
