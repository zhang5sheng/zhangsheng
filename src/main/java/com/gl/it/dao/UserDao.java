package com.gl.it.dao;

import org.apache.ibatis.annotations.Param;

import com.gl.it.entity.User;

public interface UserDao {
	// 新增
	public void insert(@Param("uu") User u);// 插入用户数据
	// 登录

	public User login(@Param("uname") String name, @Param("upwd") String pwd);

	// 获取某个用户信息
	public User selectById(@Param("id") int userId);
}