package com.gl.it.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.gl.it.entity.User;
import com.gl.it.service.CommentService;

@Controller
public class CommentController {

	private CommentService cmService;

	@Autowired
	@Qualifier("commentservice")
	public void setCmService(CommentService cmService) {
		this.cmService = cmService;
	}

	@PostMapping("/comment/add")
	public String add(int wbid, String content, HttpSession session) {
		User u = (User) session.getAttribute("curUser");
		cmService.addComment(wbid, content, u.getId());
		return "redirect:/detail?wbid=" + wbid;
	}

}
