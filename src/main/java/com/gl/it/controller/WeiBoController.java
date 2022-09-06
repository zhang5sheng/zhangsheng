package com.gl.it.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.gl.it.entity.Comment;
import com.gl.it.entity.User;
import com.gl.it.entity.WeiBo;
import com.gl.it.service.CommentService;
import com.gl.it.service.UserService;
import com.gl.it.service.WeiBoService;

@Controller
public class WeiBoController {

	private WeiBoService weiboService;

	@Autowired
	@Qualifier("weiboservice")
	public void setWeiboService(WeiBoService weiboService) {
		this.weiboService = weiboService;
	}

	private UserService userservice;

	@Autowired
	@Qualifier("userservice")
	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}

	private CommentService commentservice;

	@Autowired
	@Qualifier("commentservice")
	public void setCommentservice(CommentService commentservice) {
		this.commentservice = commentservice;
	}

	@GetMapping("/weibo/add")
	public String add() {
		return "add";
	}

	@PostMapping("/weibo/add")
	public String add(String title, String content, MultipartFile img_file, HttpSession session, HttpServletRequest req)
			throws IllegalStateException, IOException {
		System.out.println(title + content + img_file.getOriginalFilename());
		User u = (User) session.getAttribute("curUser");
		String webDir = req.getServletContext().getRealPath("/");
		String webAppDir = new File(webDir).getParent();
		img_file.transferTo(new File(webAppDir + "\\weibo_imgs\\" + img_file.getOriginalFilename()));
		weiboService.addwb(title, content, img_file.getOriginalFilename(), u.getId());
		return "redirect:/index";
	}

	@GetMapping("/index")
	public String index(Model model) {
		List<WeiBo> list = weiboService.selectAll();
		model.addAttribute("weibos", list);
		return "index";
	}

	@GetMapping("/detail")
	public String detail(int wbid, Model model) {
		// 微博信息
		WeiBo wb = weiboService.selectById(wbid);
		model.addAttribute("wb", wb);
		// 作者信息
		User author = userservice.findById(wb.getUserId());
		model.addAttribute("auth", author);
		// 作者博文总数
		int count = weiboService.findCountByUser(wb.getUserId());
		model.addAttribute("wbCount", count);
		// 作者的博文列表
		List<WeiBo> authWbList = weiboService.findListBuUser(wb.getUserId());
		model.addAttribute("authWbList", authWbList);
		// 每查看一次详情那阅读量加一
		wb.setReadCount(wb.getReadCount() + 1);
		weiboService.edit(wb);// 修改微博信息
		// 显示评论信息
		List<Comment> cmList = commentservice.findListByWb(wb.getId());
		model.addAttribute("cmList", cmList);
		return "detail";
	}

}
