package com.ikonique.userService;

import java.util.List;

import com.ikonique.bean.Area;
import com.ikonique.bean.User;

public interface userService {

	public String saveUserDetails(User user) ;
	public String saveDesignerDetails(User user);
	public List<Area> fatcharea();
	public User getUser(String email, String password);
	public String getAreaName(int id);
	public String updateUserDetails(User user);
	
}
