package com.gl.it.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.gl.it.entity.User;
import com.gl.it.service.UserService;

//SpringMvc代替了Servlet
@Controller // 相当于extends HttpServlet
public class UserController {
	private UserService userService;

	@Autowired
	@Qualifier("userservice")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/login")
	public String login() {
		return "login";// 相当于是转发req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req, resp);
	}

	@PostMapping("/login")
	public String login(String uname, String upwd, HttpSession session, Model model) throws Exception {
		System.out.println(uname + " " + upwd);
		User user = userService.login(uname, upwd);
		// session.setAttribute("", arg1);
		if (user != null) {
			session.setAttribute("curUser", user);
			return "redirect:/index";// 相当于重定向resp.sendRedirect("/weibo/index");
		} else {
			model.addAttribute("err", "用户名或密码有误");
			return "login";
		}
	}

	@GetMapping("/reg")
	public String reg() {
		return "reg";
	}

	@PostMapping("/reg")
	public String reg(User user) throws IOException {
		user.setScore(50);
		user.setAttionCount(0);
		userService.reg(user);
		return "redirect:/login";// 注册完跳回登陆页面

	}

}
