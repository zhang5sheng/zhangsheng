package com.gl.it.dao;

import org.apache.ibatis.annotations.Param;

import com.gl.it.entity.User;

public interface UserDao {
	// ����
	public void insert(@Param("uu") User u);// �����û�����
	// ��¼

	public User login(@Param("uname") String name, @Param("upwd") String pwd);

	// ��ȡĳ���û���Ϣ
	public User selectById(@Param("id") int userId);
}