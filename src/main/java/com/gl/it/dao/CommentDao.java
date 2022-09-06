package com.gl.it.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gl.it.entity.Comment;

public interface CommentDao {

	void insert(@Param("cm") Comment cm);

	List<Comment> selectListByWb(@Param("wbid") int wbid);

}
