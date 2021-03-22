package com.ikonique.userService;

import java.util.List;

import com.ikonique.bean.Area;
import com.ikonique.bean.Category;
import com.ikonique.bean.Offer;
import com.ikonique.bean.Product;
import com.ikonique.bean.SubCategory;
import com.ikonique.bean.User;

public interface userService {

	public String saveUserDetails(User user) ;
	public String saveDesignerDetails(User user);
	public List<Area> fatcharea();
	public User getUser(String email, String password);
	public String getAreaName(int id);
	public String updateUserDetails(User user);
	public String deleteUserDetails(int user_id);
	public User getEmailId(String email);
	public String updatePass(String cpass, int user_id);
	public List<User> fetchuserdetails();
	public List<User> fetchdesignerdetails();
	public List<Category> fetchcategorydetails();
	public List<SubCategory> fetchsubcategorydetails();
	public String insertProductDetails(Product product);
	public String insertCategoryDetails(Category category);
	public String insertSubCategoryDetails(SubCategory subcategory);
	public List<Product> fetchproductdetails();
	public List<SubCategory> fetchSubCategory(int categoryid);
	public List<Offer> SelectOfferDetails();
	public String insertOfferDetails(Offer offer);
	public String removecategoryDetails(int categoryId);
	public String removesubcategoryDetails(int subcategoryId);
	public String removeProductDetails(int productid);
	public String removeOfferDetails(int offerid);
	public Category fetchCategoryDetails(int categoryid);
	public String updateCategoryDetails(Category category);
	public SubCategory fetchSubCategoryDetails(int subcatid);
	public String updateSubCategoryDetails(SubCategory subcategory);
	public String updateProductDetails(Product product);
	public Offer fetchOfferDetails(int offerid);
	public String updateOfferDetails(Offer offer);
	public Product SelectProductDetail(int productid);
	public String modifyPass(String confirmpass, int user_id);
}
