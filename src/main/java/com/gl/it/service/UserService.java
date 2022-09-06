package com.gl.it.service;

import com.gl.it.entity.User;

//业务层
public interface UserService {
	// 登录
	public User login(String name, String pwd);

	// 注册
	public void reg(User u);

	// 根据id获取用户信息
	public User findById(int userId);
}
