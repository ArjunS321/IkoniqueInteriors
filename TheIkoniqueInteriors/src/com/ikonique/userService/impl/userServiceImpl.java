package com.ikonique.userService.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import com.ikonique.bean.Area;
import com.ikonique.bean.Category;
import com.ikonique.bean.Offer;
import com.ikonique.bean.Product;
import com.ikonique.bean.SubCategory;
import com.ikonique.bean.User;
import com.ikonique.bean.Wishlist;
import com.ikonique.dao.userDao;
import com.ikonique.dao.impl.userDaoImpl;
import com.ikonique.util.Main;


public class userServiceImpl {
	
	userDao userDao = new userDaoImpl();
	Connection connection = Main.getConnection();
	
	public String saveUserDetails(User user) {
		
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
	
	public String saveDesignerDetails(User user) {
		userDao userDao = new userDaoImpl();
		
		String msg=null;
		
		int insertedUserId= userDao.insertDesignerDetails(user,connection);
		if(insertedUserId>0) {
			msg="Registration Is Successfully";
			Main main=new Main();
			main.sendFromGMail("ikoniqueinteriors@gmail.com", "SAM@616263", new String[] {user.getEmail()}, "Registration Successfull", "Welcome to the world of THE IKONIQUE INTERIORS");
			
		}
		else
		{
			msg="Registration Failed";
		}

		return msg;

	}
	public List<Area> fatcharea() {
		
		return userDao.selectArea(connection);
	
	}
	public User getUser(String email, String password) {
		
		return userDao.selectUserDetails(email,password,connection);
		
	}
	public String getAreaName(int id) {
		
		return userDao.fetchAreaName(id,connection);
		
	}
	public String updateUserDetails(User user) {
		
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
		
		return userDao.fetchEmailId(email,connection);
	}
	public String updatePass(String cpass, int user_id) {
		String msg=null;
		
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
	  return userDao.selectDetails(connection);
	}
	public List<User> fetchdesignerdetails() {
			 return userDao.selectDesignerDetails(connection);

	}
	public List<Category> fetchcategorydetails() {
			 return userDao.selectCategoryDetails(connection);
	}
	public List<SubCategory> fetchsubcategorydetails() {
			 return userDao.selectSubCategoryDetails(connection);
	}
	public String insertProductDetails(Product product) {
		
		
		String msg=null;
		
		int insertedUserId= userDao.saveProductDetails(product,connection);
		if(insertedUserId>0) {
			msg="Insertion Is Successfully";
			
		}
		else
		{
			msg="Insertion Is Failed";
		}

		return msg;
	}
	public String insertCategoryDetails(Category category) {
		// TODO Auto-generated method stub
		
		String msg=null;
		int insertCategory = userDao.saveCategoryDetails(connection , category);
		if(insertCategory>0) {
			msg="Insertion Is Successfully";
		}
		else
		{
			msg="Insertion Is Failed";
		}
		return msg;
	}
	public String insertSubCategoryDetails(SubCategory subcategory) {
		// TODO Auto-generated method stub
		
		String msg=null;
		int insertsubCategory = userDao.saveSubCategoryDetails(connection , subcategory);
		if(insertsubCategory>0) {
			msg="Insertion Is Successfully";
		}
		else
		{
			msg="Insertion Is Failed";
		}
		return msg;
	}
	public List<Product> fetchproductdetails() {
		// TODO Auto-generated method stub
		return userDao.selectProductDetails(connection);
		
	}
	public List<SubCategory> fetchSubCategory(int categoryid) {
		return userDao.getSubCategory(connection , categoryid);
	}
	public List<Offer> SelectOfferDetails() {
		// TODO Auto-generated method stub
		return userDao.fetchOfferDetails(connection);
	}
	public String insertOfferDetails(Offer offer) {
		// TODO Auto-generated method stub
		
		String msg=null;
		int insertofferconunt = userDao.saveOfferDetails(connection , offer);
		if(insertofferconunt>0) {
			msg="Insertion Is Successfully";
		}
		else
		{
			msg="Insertion Is Failed";
		}
		return msg;
	}
	public String removecategoryDetails(int categoryId) {
		// TODO Auto-generated method stub
		
		int deleteCount=0;
		String msg=null;
		deleteCount=userDao.removeCategoryDetails(categoryId,connection);
		if(deleteCount>0) {
			msg="Deletion Successfully";
		}
		else
		{
			msg="Deletion Failed";
		}
		return msg;
	}
	public String removesubcategoryDetails(int subcategoryId) {
		// TODO Auto-generated method stub
		
		int deleteCount=0;
		String msg=null;
		deleteCount=userDao.removeSubCategoryDetails(subcategoryId,connection);
		if(deleteCount>0) {
			msg="Deletion Successfully";
		}
		else
		{
			msg="Deletion Failed";
		}
		return msg;
	}
	public String removeProductDetails(int productid) {
		// TODO Auto-generated method stub
		
		int deleteCount=0;
		String msg=null;
		deleteCount=userDao.removeProduct(productid,connection);
		if(deleteCount>0) {
			msg="Deletion Successfully";
		}
		else
		{
			msg="Deletion Failed";
		}
		return msg;
	}
	public String removeOfferDetails(int offerid) {
		// TODO Auto-generated method stub
		
		int deleteCount=0;
		String msg=null;
		deleteCount=userDao.removeoffer(offerid,connection);
		if(deleteCount>0) {
			msg="Deletion Successfully";
		}
		else
		{
			msg="Deletion Failed";
		}
		return msg;
	}
	public Category fetchCategoryDetails(int catid) {
		// TODO Auto-generated method stub
		Category category =new Category();
		category = userDao.selectCategoryDetails(connection,catid);
		return category;
	}

	public String updateCategoryDetails(Category category) {
		
		int updateCount=0;
		String msg=null;
		updateCount=userDao.modifyCategoryDetails(category,connection);
		if(updateCount>0) {
			msg="Updation Successfully";
		}
		else
		{
			msg="Updation Failed";
		}
		return msg;
	}

	public SubCategory fetchSubCategoryDetails(int subcatid) {
		SubCategory subcategory =new SubCategory();
		subcategory = userDao.selectSubCategory(connection,subcatid);
		return subcategory;
	}

	public String updateSubCategoryDetails(SubCategory subcategory) {
		int updateCount=0;
		String msg=null;
		updateCount=userDao.modifySubCategoryDetails(subcategory,connection);
		if(updateCount>0) {
			msg="Updation Successfully";
		}
		else
		{
			msg="Updation Failed";
		}
		return msg;
	
	}

	public Product fetchProductDetails(int productid) {
		Product product =new Product();
		product = userDao.selectProductDetails(connection,productid);
		return product;
	}

	public String updateProductDetails(Product product) {
		int updateCount=0;
		String msg=null;
		updateCount=userDao.modifyProductDetails(product,connection);
		if(updateCount>0) {
			msg="Updation Successfully";
		}
		else
		{
			msg="Updation Failed";
		}
		return msg;
	}

	public Offer fetchOfferDetails(int offerid) 
	{
		Offer offer = new Offer();
		offer = userDao.selectOfferDetails(connection,offerid);
		return offer;
	}

	public String updateOfferDetails(Offer offer) {
		System.out.println("hy1...");
		int updateCount=0;
		String msg=null;
		updateCount=userDao.modifyOfferDetails(offer,connection);
		if(updateCount>0) {
			msg="Updation Successfully";
		}
		else
		{
			msg="Updation Failed";
		}
		return msg;
	}

	public Product SelectProductDetail(int productid) {
		Product product = new Product();
		product = userDao.fetchProductDetail(connection,productid);
		return product;
	}

	public String modifyPass(String confirmpass, int user_id) {
		String msg=null;
		
		int count=0;
		count=userDao.updatePass(connection,confirmpass,user_id);
		if(count>0) {
			msg="Updation Of Password Successfully";
		}
		else
		{
			msg="Updation Of Password Failed";
		}
		
		return msg;
		
	}

	public String insertIntoWishlist(Wishlist wishlist) {
		String msg=null;
		int insertintowishlist = userDao.saveWishlistDetails(connection , wishlist);
		if(insertintowishlist>0) {
			msg="Insertion Is Successfully";
		}
		else
		{
			msg="Insertion Is Failed";
		}
		return msg;
	}

	public String deleteIntoWishlist(Wishlist wishlist) {
		int deleteCount=0;
		String msg=null;
		deleteCount=userDao.removeIntoWishlist(wishlist,connection);
		if(deleteCount>0) {
			msg="Deletion Successfully";
		}
		else
		{
			msg="Deletion Failed";
		}
		return msg;
	}

	public List<Wishlist> fetchWishlistDetails() {
		return userDao.selectWishlistDetails(connection);
	}
}
		

