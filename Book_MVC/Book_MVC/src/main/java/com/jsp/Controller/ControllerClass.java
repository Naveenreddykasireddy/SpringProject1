package com.jsp.Controller;

import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.Dao.AdminDao;
import com.jsp.Dao.BookDao;
import com.jsp.Dao.UserDao;
import com.jsp.Dto.Admin;
import com.jsp.Dto.Book;
import com.jsp.Dto.User;

@RestController
public class ControllerClass
{
	@Autowired
	BookDao bookDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	AdminDao adminDao;
	
	@RequestMapping("/getAllBookList")
	public ModelAndView getAllBookList() 
	{
		ModelAndView mv =new ModelAndView();
		List<Book> list=bookDao.displayAllBooks();
		mv.addObject("listOfBooks", list);
		mv.setViewName("Books.jsp");
		return mv;
	}
	
	@RequestMapping("/addBook")
	public ModelAndView addBook()
	{
		ModelAndView mv =new ModelAndView();
		mv.addObject("book",new Book());
		mv.setViewName("AddBooks.jsp");
		return mv;
	}
	
	@RequestMapping("/saveBOOk")
	public ModelAndView saveBook(@ModelAttribute Book b )
	{
		bookDao.saveBook(b);
		ModelAndView mv=new ModelAndView();
		mv.addObject("book",b);
		mv.setViewName("AddBookSuccessfully.jsp");
		return mv;
	}
	
	@RequestMapping("/deleteBookbyId/{id}")
	public ModelAndView deleteBookbyId(@PathVariable String id)
	{
		bookDao.deleteBookById(id);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("getAllBookList");
		return mv;
	}
	
	@RequestMapping("/updateBookById/{id}")
	public ModelAndView updateBookById(@PathVariable String id)
	{
		Book b=bookDao.findBookById(id);
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("previousBook", b);
		mv.addObject("updatebook",new Book());
		mv.setViewName("updateBook.jsp");
		return mv;
	}
	
	@RequestMapping("/BookupdateSuccess")
	public ModelAndView updateBookSuccess(@ModelAttribute Book b)
	{
		bookDao.updateBook(b);
		ModelAndView mv=new ModelAndView();
		mv.addObject("updatedBook", b);
		mv.setViewName("UpdateBookSuccessfull.jsp");
		return mv;
	}
	
	@RequestMapping("/addUser")
	public ModelAndView addUser()
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",new User());
		mv.setViewName("AddUser.jsp");
		
		return mv;
	}
	
	@RequestMapping("/saveUser")
	public ModelAndView saveUser(@ModelAttribute User u)
	{
		userDao.saveUser(u);
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("User", u);
		mv.setViewName("AddUserSuccessfully");
		return mv;
	}
	
	@RequestMapping("/usersdetailspage")
	public ModelAndView getAllusers()
	{
		List<User> li=userDao.getAllUsers();
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("usersList", li);
		mv.setViewName("User.jsp");
		return mv;
	}
	
	@RequestMapping("updateUserbyId/{id}")
	public ModelAndView updateUserByid(int id)
	{
		User u=userDao.findUserById(id);
		ModelAndView mv=new ModelAndView();
		mv.addObject("previousUser", u);
		mv.addObject("updateUser",new User());
		mv.setViewName("UpdateUser.jsp");
		return mv;
	}
	
	@RequestMapping("/updateUser")
	public ModelAndView updateUserSuccessfullu(@ModelAttribute User u)
	{
		userDao.updateUser(u);
		ModelAndView mv=new ModelAndView();
		mv.addObject("updatedUser", u);
		mv.setViewName("UpdateUserSuccessfull.jsp");
		return mv;
	}
	
	@RequestMapping("/deleteUserbyId/{id}")
	public ModelAndView deleteUserbyId(@PathVariable int id)
	{
		userDao.deleteUser(null);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("usersdetailspage");
		return mv;
	}
	
	
	@RequestMapping("/addAdmin")
	public ModelAndView addAdmin()
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("admin",new Admin());
		mv.setViewName("CreateAccount.jsp");
		return mv;
	}
	@RequestMapping("/saveAdmin")
	public ModelAndView saveAdmin(@ModelAttribute Admin a)
	{
		adminDao.saveAdmin(a);
		ModelAndView mv=new ModelAndView();
		mv.addObject("admin", a);
		mv.setViewName("AddAdminSuccessfully.jsp");
		return mv;
	}
	
	@RequestMapping("/AdminLoginCheck")
	public ModelAndView adminLogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("admin",new Admin());
		mv.setViewName("AdminLogin.jsp");
		return mv;
	}
	
	@RequestMapping("/AdminLoginSuccessfull")
	public ModelAndView adminLoginSuccessfull(@ModelAttribute Admin a)
	{
		String email=a.getEmail();
		String password=a.getPassword();
		Admin admin=adminDao.findAdminByEmailAndPassword(email,password);
		
		ModelAndView mv=new ModelAndView();
		
		if(admin!=null)
		{
			mv.setViewName("Admin.jsp");
			return mv;
		}
		else
		{
			mv.setViewName("AdminLoginUnsuccessfull.jsp");
			return mv;
		}
	}
	
}
