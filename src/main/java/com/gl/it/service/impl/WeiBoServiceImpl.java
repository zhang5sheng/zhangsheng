package com.gl.it.service.impl;

import java.util.Date;
import java.util.List;

import com.gl.it.dao.WeiBoDao;
import com.gl.it.entity.WeiBo;
import com.gl.it.service.WeiBoService;

public class WeiBoServiceImpl implements WeiBoService {

	private WeiBoDao dao = null;

	public void setDao(WeiBoDao dao) {
		this.dao = dao;
	}

	@Override
	public List<WeiBo> selectAll() {
		List<WeiBo> list = dao.selectAll();
		return list;
	}

	@Override
	public WeiBo selectById(int wbid) {
		WeiBo wb = dao.selectById(wbid);
		return wb;
	}

	@Override
	public void addwb(String title, String content, String imgname, int userid) {
		WeiBo wb = new WeiBo();
		wb.setTitle(title);
		wb.setContent(content);
		wb.setImg(imgname);
		wb.setUserId(userid);
		wb.setCreateTime(new Date());
		wb.setReadCount(0);
		dao.insert(wb);
	}

	@Override
	public int findCountByUser(int userId) {
		return dao.selectCountByUser(userId);
	}

	@Override
	public List<WeiBo> findListBuUser(int userId) {
		return dao.selectListByUser(userId);
	}

	@Override
	public int edit(WeiBo wb) {
		return dao.update(wb);
	}

}
