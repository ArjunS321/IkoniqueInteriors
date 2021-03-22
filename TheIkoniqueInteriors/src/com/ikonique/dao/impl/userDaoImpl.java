package com.ikonique.dao.impl;

import java.sql.DriverManager;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import com.ikonique.bean.Area;
import com.ikonique.bean.Category;
import com.ikonique.bean.Offer;
import com.ikonique.bean.Product;
import com.ikonique.bean.SubCategory;
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
					  user.setUserProfilepicString(imageString);
					  //System.out.println(imageString); 
					  }
					  
					  
				else { System.out.println("balnk.............."); }
					  
					user.setRole_id(resultSet.getInt("i_role_id"));
					user.setUser_id(resultSet.getInt("i_user_id"));
					user.setFirstname(resultSet.getString("c_first_name"));
					user.setLastname(resultSet.getString("c_last_name"));
					user.setPassword(resultSet.getString("c_password"));
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
		String updateQuery = "update user set c_first_name=?,c_last_name=?,c_address=?,c_contact_no=?,c_email=?,c_gender=?,i_area_id=?,b_image=?where i_user_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
			preparedStatement.setString(1, user.getFirstname());
			preparedStatement.setString(2, user.getLastname());
			preparedStatement.setString(3, user.getAddress());
			preparedStatement.setString(4, user.getMobileno());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setString(6, user.getGender());
			preparedStatement.setInt(7, user.getArea_id());
			preparedStatement.setBlob(8, user.getUserProfilepicStream());
			preparedStatement.setInt(9, user.getUser_id());

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
		String selectQuery="select * from user where i_role_id=1";
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
				//String visitingfess = resultSet.getString("i_visiting_fess");
				
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
				//user.setVisitingfees(visitingfess);	
				userList.add(user);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return userList;
	}

	@Override
	public List<User> selectDesignerDetails(Connection connection) {
		String selectQuery="select * from user where i_role_id=2";
		List<User> designerList = new ArrayList<User>();
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
				designerList.add(user);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return designerList;

	}

	@Override
	public List<Category> selectCategoryDetails(Connection connection) {
		String selectQuery="select * from category";
		List<Category> categoryList = new ArrayList<Category>();
		try(PreparedStatement preparedStatement=connection.prepareStatement(selectQuery);
				
				ResultSet resultSet=preparedStatement.executeQuery())
		{
			while(resultSet.next())
			{
				
				Category category = new Category();
				category.setCategory_id(resultSet.getInt("i_category_id"));
				category.setCategory_name(resultSet.getString("c_category_name"));
				category.setStatus(resultSet.getInt("i_status"));
				categoryList.add(category);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return categoryList;

	}

	@Override
	public List<SubCategory> selectSubCategoryDetails(Connection connection) {
		String selectQuery="select * from sub_category";
		List<SubCategory> subcategoryList = new ArrayList<SubCategory>();
		try(PreparedStatement preparedStatement=connection.prepareStatement(selectQuery);
				
				ResultSet resultSet=preparedStatement.executeQuery())
		{
			while(resultSet.next())
			{
				
				SubCategory subcategory=new SubCategory();
				subcategory.setSub_category_id(resultSet.getInt("i_sub_category_id"));
				subcategory.setCategory_id(resultSet.getInt("i_category_id"));
				subcategory.setSub_category_name(resultSet.getString("c_sub_category_name"));
				subcategory.setStatus(resultSet.getInt("i_status"));
				subcategoryList.add(subcategory);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return subcategoryList;
	}

	@Override
	public int saveProductDetails(Product product, Connection connection) {
		int i = 0, insertedProductId = 0;
		String insertQuery = "insert into product (c_product_name,d_product_price,i_product_quantity,d_product_weight,c_product_description,i_main_category_id,i_sub_category_id,b_product_image,i_product_owner_id,i_offer_id) values(?,?,?,?,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery,Statement.RETURN_GENERATED_KEYS)) {
			preparedStatement.setString(1, product.getProduct_name());
			preparedStatement.setString(2, product.getProduct_price());
			preparedStatement.setString(3, product.getProduct_quantity());
			preparedStatement.setString(4, product.getProduct_weight());
			preparedStatement.setString(5, product.getProduct_desc());
			preparedStatement.setInt(6, product.getCategory_id());
			preparedStatement.setInt(7, product.getSubcategory_id());
			preparedStatement.setBlob(8, product.getProductpicStream());
			preparedStatement.setInt(9,product.getProduct_owner_id());
			preparedStatement.setInt(10, product.getOfferid());

			i = preparedStatement.executeUpdate();
			ResultSet resultSet = preparedStatement.getGeneratedKeys();

			while (resultSet.next()) {
				insertedProductId = resultSet.getInt(1);
			}
			System.out.println(insertedProductId);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return insertedProductId;

	}

	@Override
	public int saveCategoryDetails(Connection connection, Category category) {
		// TODO Auto-generated method stub
		int i = 0, insertedCategoryId = 0;
		String insertQuery = "insert into category (c_category_name)values (?)";
		try { 
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery,Statement.RETURN_GENERATED_KEYS)) {
			preparedStatement.setString(1, category.getCategory_name());

			i = preparedStatement.executeUpdate();
			ResultSet resultSet = preparedStatement.getGeneratedKeys();

			while (resultSet.next()) {
				insertedCategoryId = resultSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return insertedCategoryId;
	}

	@Override
	public int saveSubCategoryDetails(Connection connection, SubCategory subcategory) {
		// TODO Auto-generated method stub
		int i = 0, insertedsubCategoryId = 0;
		String insertQuery = "insert into sub_category (c_sub_category_name,i_category_id)values (?,?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery,Statement.RETURN_GENERATED_KEYS)) {
			preparedStatement.setString(1, subcategory.getSub_category_name());
			preparedStatement.setInt(2, subcategory.getCategory_id());

			i = preparedStatement.executeUpdate();
			ResultSet resultSet = preparedStatement.getGeneratedKeys();

			while (resultSet.next()) {
				insertedsubCategoryId = resultSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return insertedsubCategoryId;
	}

	@Override
	public List<Product> selectProductDetails(Connection connection) {
		// TODO Auto-generated method stub
		String selectQuery="select * from product";
		List<Product> productList = new ArrayList<Product>();
		try(PreparedStatement preparedStatement=connection.prepareStatement(selectQuery);
				
				ResultSet resultSet=preparedStatement.executeQuery())
		{
			while(resultSet.next())
			{
				
				Product product=new Product();
				product.setProduct_id(resultSet.getInt("i_product_id"));
				product.setProduct_name(resultSet.getString("c_product_name"));
				product.setProduct_price(resultSet.getString("d_product_price"));
				product.setProduct_quantity(resultSet.getString("i_product_quantity"));
				product.setProduct_weight(resultSet.getString("d_product_weight"));
				product.setCategory_id(resultSet.getInt("i_main_category_id"));
				product.setSubcategory_id(resultSet.getInt("i_sub_category_id"));
				product.setProduct_desc(resultSet.getString("c_product_description"));
				product.setProduct_owner_id(resultSet.getInt("i_product_owner_id"));
				product.setOfferid(resultSet.getInt("i_offer_id"));
				product.setStatus(resultSet.getInt("i_status"));
				byte[] productpic = resultSet.getBytes("b_product_image");
				if(null!=productpic && productpic.length>0) 
				{
					String imageString = Base64.getEncoder().encodeToString(productpic);
					product.setProductpicString(imageString);
					System.out.println(imageString);
				}
				System.out.println(productpic);
				
				productList.add(product);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return productList;
		
	}

	@Override
	public List<SubCategory> getSubCategory(Connection connection, int categoryid) {
	
		String selectQuery="select * from sub_category where i_category_id=?";
		List<SubCategory> subcatlist= new ArrayList<SubCategory>();
		

		try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
			preparedStatement.setInt(1, categoryid);

			try (ResultSet resultSet = preparedStatement.executeQuery();) {

				while (resultSet.next()) {
					
					SubCategory subcategory=new SubCategory();
					  subcategory.setSub_category_id(resultSet.getInt("i_sub_category_id"));
					  subcategory.setSub_category_name(resultSet.getString("c_sub_category_name"));
					  subcatlist.add(subcategory);
				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return subcatlist;
		

	}

	@Override
	public List<Offer> fetchOfferDetails(Connection connection) {
		// TODO Auto-generated method stub
		String selectQuery="select * from offer";
		List<Offer> offerList= new ArrayList<Offer>();
		

		try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
			
			try (ResultSet resultSet = preparedStatement.executeQuery();) {

				while (resultSet.next()) {
					
					Offer offer = new Offer();
					offer.setOfferid(resultSet.getInt("i_offer_id"));
					offer.setOffername(resultSet.getString("c_offer_name"));
					offer.setValidoffer(resultSet.getInt("i_is_valid"));
					offer.setDiscount(resultSet.getDouble("d_discount"));
					offerList.add(offer);	  
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return offerList;
	}

	@Override
	public int saveOfferDetails(Connection connection, Offer offer) {
		// TODO Auto-generated method stub
		int i = 0, insertedOfferId = 0;
		String insertQuery = "insert into offer (c_offer_name,i_is_valid,d_discount) values(?,?,?)";
		try { 
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try(PreparedStatement preparedStatement = connection.prepareStatement(insertQuery,Statement.RETURN_GENERATED_KEYS)) {
			preparedStatement.setString(1, offer.getOffername());
			preparedStatement.setInt(2, 1);
			preparedStatement.setDouble(3, offer.getDiscount());

			i = preparedStatement.executeUpdate();
			ResultSet resultSet = preparedStatement.getGeneratedKeys();

			while (resultSet.next()) 
			{
				insertedOfferId = resultSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return insertedOfferId;
	}

	@Override
	public int removeCategoryDetails(int categoryId, Connection connection) {
		// TODO Auto-generated method stub
		String deleteQuery = "update category set i_status=? where i_category_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
			preparedStatement.setInt(1, 0);
			preparedStatement.setInt(2, categoryId);

			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int removeSubCategoryDetails(int subcategoryId, Connection connection) {
		// TODO Auto-generated method stub
		String deleteQuery = "update sub_category set i_status=? where i_sub_category_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
			preparedStatement.setInt(1, 0);
			preparedStatement.setInt(2, subcategoryId);

			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int removeProduct(int productid, Connection connection) {
		// TODO Auto-generated method stub
		String deleteQuery = "update product set i_status=? where i_product_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
			preparedStatement.setInt(1, 0);
			preparedStatement.setInt(2, productid);

			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int removeoffer(int offerid, Connection connection) {
		// TODO Auto-generated method stub
		String deleteQuery = "update offer set i_is_valid=? where i_offer_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
			preparedStatement.setInt(1, 0);
			preparedStatement.setInt(2, offerid);

			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public Category selectCategoryDetails(Connection connection, int categoryid) {
		// TODO Auto-generated method stub
		String selectQuery = "select * from category where i_category_id = ?";
		Category category=null;
		
		try(PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)){
			preparedStatement.setInt(1, categoryid);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				category=new Category();
				category.setCategory_id(resultSet.getInt("i_category_id"));
				category.setCategory_name(resultSet.getString("c_category_name"));
				category.setStatus(resultSet.getInt("i_status"));
				
			}
			//System.out.println("name:-"+category.getCategory_name());
		}
		catch (Exception e)
		{
			e.printStackTrace();		
		}
		return category;
	}

	@Override
	public int modifyCategoryDetails(Category category, Connection connection) {
		String updateQuery = "update category set c_category_name=?,i_status=? where i_category_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
			preparedStatement.setString(1, category.getCategory_name());
			preparedStatement.setInt(2, category.getStatus());
			preparedStatement.setInt(3, category.getCategory_id());
			
			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public SubCategory selectSubCategory(Connection connection, int subcatid) {
		String selectQuery = "select * from sub_category where i_sub_category_id = ?";
		SubCategory subcategory=null;
		
		try(PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)){
			preparedStatement.setInt(1, subcatid);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				subcategory=new SubCategory();
				subcategory.setSub_category_id(resultSet.getInt("i_sub_category_id"));
				subcategory.setCategory_id(resultSet.getInt("i_category_id"));
				subcategory.setSub_category_name(resultSet.getString("c_sub_category_name"));
				subcategory.setStatus(resultSet.getInt("i_status"));
				
				
			}
			//System.out.println("name:-"+category.getCategory_name());
		}
		catch (Exception e)
		{
			e.printStackTrace();		
		}
		return subcategory;
	}

	@Override
	public int modifySubCategoryDetails(SubCategory subcategory, Connection connection) {
		String updateQuery = "update sub_category set i_category_id=?,c_sub_category_name=?,i_status=? where i_sub_category_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
			preparedStatement.setInt(1,subcategory.getCategory_id());
			preparedStatement.setString(2, subcategory.getSub_category_name());
			preparedStatement.setInt(3, subcategory.getStatus());
			preparedStatement.setInt(4, subcategory.getSub_category_id());
			
			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public Product selectProductDetails(Connection connection, int productid) {
		String selectQuery = "select * from product where i_product_id = ?";
		Product product=null;
		
		try(PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)){
			preparedStatement.setInt(1, productid);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				product=new Product();
				product.setProduct_id(resultSet.getInt("i_product_id"));
				product.setProduct_name(resultSet.getString("c_product_name"));
				product.setProduct_price(resultSet.getString("d_product_price"));
				product.setProduct_quantity(resultSet.getString("i_product_quantity"));
				product.setProduct_weight(resultSet.getString("d_product_weight"));
				product.setProduct_owner_id(resultSet.getInt("i_product_owner_id"));
				product.setProduct_desc(resultSet.getString("c_product_description"));
				product.setCategory_id(resultSet.getInt("i_main_category_id"));
				product.setOfferid(resultSet.getInt("i_offer_id"));
				product.setSubcategory_id(resultSet.getInt("i_sub_category_id"));
				product.setStatus(resultSet.getInt("i_status"));
				byte[] productimage = resultSet.getBytes("b_product_image"); 
				String imageString=null;
				  
				  if(null!=productimage && productimage.length>0) { 
					imageString = Base64.getEncoder().encodeToString(productimage);
				  product.setProductpicString(imageString);
			}
				  else
				  {
					  System.out.println("blank....");
				  }
			//System.out.println("name:-"+category.getCategory_name());
		}
		}
		catch (Exception e)
		{
			e.printStackTrace();		
		}
		return product;
	}

	@Override
	public int modifyProductDetails(Product product, Connection connection) {
		String updateQuery = "update product set c_product_name=?,d_product_price=?,i_product_quantity=?,d_product_weight=?,i_product_owner_id=?,c_product_description=?,i_main_category_id=?,i_sub_category_id=?,i_offer_id=?,i_status=?,b_product_image=? where i_product_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
			preparedStatement.setString(1, product.getProduct_name());
			preparedStatement.setString(2, product.getProduct_price());
			preparedStatement.setString(3, product.getProduct_quantity());
			preparedStatement.setString(4, product.getProduct_weight());
			preparedStatement.setInt(5,product.getProduct_owner_id());
			preparedStatement.setString(6, product.getProduct_desc());
			preparedStatement.setInt(7, product.getCategory_id());
			preparedStatement.setInt(8, product.getSubcategory_id());
			preparedStatement.setInt(9, product.getOfferid());
			preparedStatement.setInt(10, product.getStatus());
			preparedStatement.setBlob(11, product.getProductpicStream());
			preparedStatement.setInt(12, product.getProduct_id());
			
			
			
			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public Offer selectOfferDetails(Connection connection, int offerid) {
		String selectQuery = "select * from offer where i_offer_id = ?";
		Offer offer=null;
		
		try(PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)){
			preparedStatement.setInt(1, offerid);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				offer = new Offer();
				offer.setOffername(resultSet.getString("c_offer_name"));
				offer.setDiscount(resultSet.getDouble("d_discount"));
				offer.setValidoffer(resultSet.getInt("i_is_valid"));
				offer.setOfferid(resultSet.getInt("i_offer_id"));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();		
		}
		return offer;
	}

	@Override
	public int modifyOfferDetails(Offer offer, Connection connection) {
		System.out.println("hy2...");
		String updateQuery = "update offer set c_offer_name=?,d_discount=?,i_is_valid=? where i_offer_id=?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
			preparedStatement.setString(1, offer.getOffername());
			preparedStatement.setDouble(2, offer.getDiscount());
			preparedStatement.setInt(3, offer.getValidoffer());
			preparedStatement.setInt(4, offer.getOfferid());
			System.out.println("hy3...");
			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public Product fetchProductDetail(Connection connection, int productid) {
		String selectQuery = "select * from product where i_product_id = ?";
		Product product = null;
		
		try(PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)){
			preparedStatement.setInt(1, productid);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				product=new Product();
				product.setProduct_id(resultSet.getInt("i_product_id"));
				product.setProduct_name(resultSet.getString("c_product_name"));
				product.setProduct_price(resultSet.getString("d_product_price"));
				product.setProduct_quantity(resultSet.getString("i_product_quantity"));
				product.setProduct_weight(resultSet.getString("d_product_weight"));
				product.setProduct_owner_id(resultSet.getInt("i_product_owner_id"));
				product.setProduct_desc(resultSet.getString("c_product_description"));
				product.setCategory_id(resultSet.getInt("i_main_category_id"));
				product.setOfferid(resultSet.getInt("i_offer_id"));
				product.setSubcategory_id(resultSet.getInt("i_sub_category_id"));
				product.setStatus(resultSet.getInt("i_status"));
				byte[] productimage = resultSet.getBytes("b_product_image"); 
				String imageString=null;
				  if(null!=productimage && productimage.length>0)
				  { 
					imageString = Base64.getEncoder().encodeToString(productimage);
					product.setProductpicString(imageString);
				  }
				  else
				  {
					  System.out.println("blank....");
				  }
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();		
		}
		return product;
	}

}

	


