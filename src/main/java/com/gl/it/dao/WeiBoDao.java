package com.gl.it.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gl.it.entity.WeiBo;

public interface WeiBoDao {
	List<WeiBo> selectAll();// ≤È’“Œ¢≤©¡–±Ì

	WeiBo selectById(@Param("id") int id);

	void insert(@Param("wb") WeiBo wb);

	int selectCountByUser(@Param("userid") int userId);

	List<WeiBo> selectListByUser(@Param("userid") int userId);

	int update(@Param("wb") WeiBo wb);
}
