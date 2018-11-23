package com.baizhi.spring.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.baizhi.spring.entity.User;
import com.baizhi.spring.service.UserService;

@Controller
public class Usercontroller {
	@Autowired
	private UserService userService;
	
	@RequestMapping("login")
	public String  login(String name,String password,String yzm,HttpSession Session){
		if(yzm.equalsIgnoreCase((String) Session.getAttribute("kaptcha"))){
			 if(userService.login(name, password)!=null){
				 Session.setAttribute("user",userService.login(name, password));
				 System.out.println("µÇÂ¼");
				 
				 return "redirect:/selectAll.do";
			 }
		}
		return "redirect:/login.jsp";
	}
	
	
	@RequestMapping("register")
	public String  register(User user){
		user.setUser_is_admin(0);
		user.setUser_question("");
		user.setUser_answer("");
		userService.register(user);
		return "redirect:/login.jsp";
	}
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	
	
}
