package com.ikonique.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ikonique.bean.Area;
import com.ikonique.bean.User;
import com.ikonique.dao.userDao;


public class userDaoImpl implements userDao {

	@Override
	public int insertUserDetails(User user, Connection connection) {
		int i = 0, insertedUserId = 0;
		String insertQuery = "insert into user (c_first_name,c_last_name,c_address,c_contact_no,c_email,c_password,c_gender,i_role_id,i_area_id) values (?,?,?,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery,
				Statement.RETURN_GENERATED_KEYS)) {
			preparedStatement.setString(1, user.getFirstname());
			preparedStatement.setString(2, user.getLastname());
			preparedStatement.setString(3, user.getAddress());
			preparedStatement.setString(4, user.getMobileno());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setString(6, user.getPassword());
			preparedStatement.setString(7, user.getGender());
			
			/* preparedStatement.setString(8, user.getVisitingfees()); */
			preparedStatement.setInt(8,1);
			preparedStatement.setInt(9, user.getArea_id());
			
			
			i = preparedStatement.executeUpdate();
			ResultSet resultSet = preparedStatement.getGeneratedKeys();

			while (resultSet.next()) {
				insertedUserId = resultSet.getInt(1);
			}
			System.out.println(insertedUserId);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return insertedUserId;



	}

	@Override
	public int insertDesignerDetails(User user, Connection connection) {
		
		int i = 0, insertedUserId = 0;
		String insertQuery = "insert into user (c_first_name,c_last_name,c_address,c_contact_no,c_email,c_password,c_gender,i_role_id,i_visiting_fess) values (?,?,?,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery,
				Statement.RETURN_GENERATED_KEYS)) {
			preparedStatement.setString(1, user.getFirstname());
			preparedStatement.setString(2, user.getLastname());
			preparedStatement.setString(3, user.getAddress());
			preparedStatement.setString(4, user.getMobileno());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setString(6, user.getPassword());
			preparedStatement.setString(7, user.getGender());
			preparedStatement.setInt(8,2);
		    preparedStatement.setString(9, user.getVisitingfees()); 
			
			
			i = preparedStatement.executeUpdate();
			ResultSet resultSet = preparedStatement.getGeneratedKeys();

			while (resultSet.next()) {
				insertedUserId = resultSet.getInt(1);
			}
			System.out.println(insertedUserId);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return insertedUserId;



	}

	@Override
	public List<Area> selectArea(Connection connection) {
		String selectQuery = "select * from area";
		List<Area> Area = new ArrayList<>();
		try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Area area = new Area();
				area.setArea_id(resultSet.getInt("i_area_id"));
				area.setArea_name(resultSet.getString("c_area_name"));
				area.setPincodde(resultSet.getInt("i_area_pincode"));
				Area.add(area);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Area;

	}

	
	
}
