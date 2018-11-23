package com.baizhi.spring.service;

import com.baizhi.spring.entity.User;

public interface UserService {
	//登录
	User login(String username, String password);
	//注册
	void register(User user);
	
}
