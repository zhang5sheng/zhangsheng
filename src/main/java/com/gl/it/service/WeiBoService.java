package com.gl.it.service;

import java.util.List;

import com.gl.it.entity.WeiBo;

public interface WeiBoService {
	public List<WeiBo> selectAll();// ����΢���б�

	public WeiBo selectById(int wbid);// ��ѯ΢����ϸ

	public void addwb(String title, String content, String originalFilename, int id);// ����΢��

	public int findCountByUser(int userId);// ����ĳ���û����ܲ�����

	public List<WeiBo> findListBuUser(int userId);// ����ĳ���û��ķ���Ĳ����б�

	public int edit(WeiBo wb);// �޸�΢����Ϣ

}
