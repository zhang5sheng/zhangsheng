package com.gl.it.service.impl;

import com.gl.it.dao.UserDao;
import com.gl.it.entity.User;
import com.gl.it.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao dao = null;

	public void setDao(UserDao dao) {
		this.dao = dao;
	}

	@Override
	public User login(String name, String pwd) {
		User user = dao.login(name, pwd);
		return user;
	}

	@Override
	public void reg(User u) {
		dao.insert(u);
	}

	@Override
	public User findById(int userId) {
		return dao.selectById(userId);
	}

}
