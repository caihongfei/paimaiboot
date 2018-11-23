package com.baizhi.spring.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.spring.dao.UserDao;
import com.baizhi.spring.entity.User;
import com.baizhi.spring.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	

	@Override
	public User login(String username,String password) {
		User user = userDao.login(username,password);
		
		return user;
	}

	@Override
	public void register(User user) {
		userDao.register(user);
	}

}
