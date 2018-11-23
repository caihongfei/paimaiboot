package com.baizhi.spring.dao;

import org.apache.ibatis.annotations.Param;

import com.baizhi.spring.entity.User;

public interface UserDao {
	//登录
	User login(@Param("name") String user_username, @Param("password") String user_password);
	//注册
	void register(User user);

	
}
