package com.gl.it.service;

import java.util.List;

import com.gl.it.entity.WeiBo;

public interface WeiBoService {
	public List<WeiBo> selectAll();// 查找微博列表

	public WeiBo selectById(int wbid);// 查询微博详细

	public void addwb(String title, String content, String originalFilename, int id);// 发表微博

	public int findCountByUser(int userId);// 查找某个用户的总博文数

	public List<WeiBo> findListBuUser(int userId);// 查找某个用户的发表的博文列表

	public int edit(WeiBo wb);// 修改微博信息

}
