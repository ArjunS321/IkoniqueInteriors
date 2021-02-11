package com.ikonique.dao.impl;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
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
			preparedStatement.setInt(8, 1);
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
		String insertQuery = "insert into user (c_first_name,c_last_name,c_address,c_contact_no,c_email,c_password,c_gender,i_role_id,i_visiting_fess,i_area_id) values (?,?,?,?,?,?,?,?,?,?)";
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
			preparedStatement.setInt(8, 2);
			preparedStatement.setString(9, user.getVisitingfees());
			preparedStatement.setInt(10, user.getArea_id());

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

	@Override
	public User selectUserDetails(String email, String password, Connection connection) {
		User user = null;

		String selectQuery = "select * from user where c_email=? and c_password=? and i_status=?";

		try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			preparedStatement.setInt(3, 1);
			//preparedStatement.setInt(4, 1);
			try (ResultSet resultSet = preparedStatement.executeQuery();) {

				while (resultSet.next()) {
					System.out.println(resultSet.getInt("i_user_id"));
					user = new User();

					
					  byte[] imageData = resultSet.getBytes("b_image"); String imageString=null;
					  
					  if(null!=imageData && imageData.length>0) { imageString =
					  Base64.getEncoder().encodeToString(imageData);
					  System.out.println("Length::"+imageData.length);
					  user.setUserProfilepicString(imageString); System.out.println(imageString); }
					 
					  
					  
				else { System.out.println("balnk.............."); }
					  
					 
					user.setUser_id(resultSet.getInt("i_user_id"));
					user.setFirstname(resultSet.getString("c_first_name"));
					user.setLastname(resultSet.getString("c_last_name"));
					user.setAddress(resultSet.getString("c_address"));
					user.setMobileno(resultSet.getString("c_contact_no"));
					user.setEmail(resultSet.getString("c_email"));
					user.setArea_id(resultSet.getInt("i_area_id"));
					user.setGender(resultSet.getString("c_gender"));

				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return user;
	}

	@Override
	public String fetchAreaName(int id, Connection connection) {

		String selectQuery = "select c_area_name from area where i_area_id=?";

		try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
			preparedStatement.setInt(1, id);

			try (ResultSet resultSet = preparedStatement.executeQuery();) {

				while (resultSet.next()) {
					String name = resultSet.getString("c_area_name");
					return name;

				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public int modifyUserDetails(User user, Connection connection) {
		String updateQuery = "update user set c_first_name=?,c_last_name=?,c_address=?,c_contact_no=?,c_email=?,c_gender=?,b_image=?where i_user_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
			preparedStatement.setString(1, user.getFirstname());
			preparedStatement.setString(2, user.getLastname());
			preparedStatement.setString(3, user.getAddress());
			preparedStatement.setString(4, user.getMobileno());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setString(6, user.getGender());
			preparedStatement.setBlob(7, user.getUserProfilepicStream());
			preparedStatement.setInt(8, user.getUser_id());

			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public int removeUserDetails(int user_id, Connection connection) {
		String deleteQuery = "update user set i_status=? where i_user_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
			preparedStatement.setInt(1, 0);
			preparedStatement.setInt(2, user_id);

			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public User fetchEmailId(String email, Connection connection) {
		// TODO Auto-generated method stub
		String selectQuery = "select * from user where c_email=?";
		User user = new User();
		try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
			preparedStatement.setString(1, email);

			try (ResultSet resultSet = preparedStatement.executeQuery();) {

				while (resultSet.next()) {

					user.setUser_id(resultSet.getInt("i_user_id"));
					user.setFirstname(resultSet.getString("c_first_name"));
					user.setLastname(resultSet.getString("c_last_name"));
					user.setAddress(resultSet.getString("c_address"));
					user.setMobileno(resultSet.getString("c_contact_no"));
					user.setEmail(resultSet.getString("c_email"));
					user.setArea_id(resultSet.getInt("i_area_id"));
					user.setGender(resultSet.getString("c_gender"));

				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return user;

	}

	@Override
	public int modifyPass(Connection connection, String cpass, int user_id) {

		String updateQuery = "update user set c_password=? where i_user_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
			preparedStatement.setString(1, cpass);
			preparedStatement.setInt(2, user_id);

			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public List<User> selectDetails(Connection connection) {
		// TODO Auto-generated method stub
		String selectQuery="select * from user";
		List<User> userList = new ArrayList<User>();
		try(PreparedStatement preparedStatement=connection.prepareStatement(selectQuery);
				ResultSet resultSet=preparedStatement.executeQuery())
		{
			while(resultSet.next())
			{
				Integer id = resultSet.getInt("i_user_id");
				String fname = resultSet.getString("c_first_name");
				String lname = resultSet.getString("c_last_name");
				String address = resultSet.getString("c_address");
				String phoneno = resultSet.getString("c_contact_no");
				String email = resultSet.getString("c_email");
				String password = resultSet.getString("c_password");
				String gender = resultSet.getString("c_gender");
				//Integer role = resultSet.getInt("i_role_id");
				Integer areaid = resultSet.getInt("i_area_id");
				//Integer status = resultSet.getInt("i_status");
				String visitingfess = resultSet.getString("i_visiting_fess");
				
				User user = new User();
				user.setUser_id(id);
				user.setFirstname(fname);
				user.setLastname(lname);
				user.setAddress(address);
				user.setMobileno(phoneno);
				user.setEmail(email);
				user.setPassword(password);
				user.setGender(gender);
				user.setArea_id(areaid);
				user.setVisitingfees(visitingfess);	
				userList.add(user);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return userList;
	}

}
