package com.gl.it.service;

import com.gl.it.entity.User;

//ҵ���
public interface UserService {
	// ��¼
	public User login(String name, String pwd);

	// ע��
	public void reg(User u);

	// ����id��ȡ�û���Ϣ
	public User findById(int userId);
}
