package com.ikonique.dao;

import java.sql.Connection;

import com.ikonique.bean.User;

public interface userDao {

	public int insertUserDetails(User user, Connection connection);

}
