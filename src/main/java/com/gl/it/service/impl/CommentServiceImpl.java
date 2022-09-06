package com.gl.it.service.impl;

import java.util.Date;
import java.util.List;

import com.gl.it.dao.CommentDao;
import com.gl.it.entity.Comment;
import com.gl.it.service.CommentService;

public class CommentServiceImpl implements CommentService {

	private CommentDao dao;

	public void setDao(CommentDao dao) {
		this.dao = dao;
	}

	@Override
	public void addComment(int wbid, String content, int userid) {
		Comment cm = new Comment();
		cm.setContent(content);
		cm.setWeiboId(wbid);
		cm.setUserId(userid);
		cm.setCreateTime(new Date());
		dao.insert(cm);
	}

	@Override
	public List<Comment> findListByWb(int wbid) {
		return dao.selectListByWb(wbid);
	}

}
