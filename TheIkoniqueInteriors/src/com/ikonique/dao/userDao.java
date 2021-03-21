package com.ikonique.dao;

import java.sql.Connection;
import java.util.List;

import com.ikonique.bean.Area;
import com.ikonique.bean.Category;
import com.ikonique.bean.Offer;
import com.ikonique.bean.Product;
import com.ikonique.bean.SubCategory;
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

	public List<User> selectDesignerDetails(Connection connection);

	public List<Category> selectCategoryDetails(Connection connection);

	public List<SubCategory> selectSubCategoryDetails(Connection connection);

	public int saveProductDetails(Product product, Connection connection);

	public int saveCategoryDetails(Connection connection, Category category);

	public int saveSubCategoryDetails(Connection connection, SubCategory subcategory);

	public List<Product> selectProductDetails(Connection connection);

	public List<SubCategory> getSubCategory(Connection connection, int categoryid);

	public List<Offer> fetchOfferDetails(Connection connection);

	public int saveOfferDetails(Connection connection, Offer offer);

	public int removeCategoryDetails(int categoryId, Connection connection);

	public int removeSubCategoryDetails(int subcategoryId, Connection connection);

	public int removeProduct(int productid, Connection connection);

	public int removeoffer(int offerid, Connection connection);

	public Category selectCategoryDetails(Connection connection, int categoryid);

	public int modifyCategoryDetails(Category category, Connection connection);

	public SubCategory selectSubCategory(Connection connection, int subcatid);

	public int modifySubCategoryDetails(SubCategory subcategory, Connection connection);

	public Product selectProductDetails(Connection connection, int productid);

	public int modifyProductDetails(Product product, Connection connection);

	public Offer selectOfferDetails(Connection connection, int offerid);

	public int modifyOfferDetails(Offer offer, Connection connection);

	public Product fetchProductDetail(Connection connection, int productid);

	

	
	

	

	

}
