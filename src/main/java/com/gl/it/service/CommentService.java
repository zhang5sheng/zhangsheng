package com.gl.it.service;

import java.util.List;

import com.gl.it.entity.Comment;

public interface CommentService {
	void addComment(int wbid, String content, int userid);

	List<Comment> findListByWb(int id);
}
