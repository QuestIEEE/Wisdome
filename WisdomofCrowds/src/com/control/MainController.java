package com.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.User;
import com.service.UserService;

@Controller
@RequestMapping("/")
public class MainController {
	@Autowired
	UserService service;

	@RequestMapping(method = RequestMethod.GET)
	public String home() {
		return "login";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String resister(@ModelAttribute("user") User user, @ModelAttribute("password1") String pssword,
			ModelMap map) {
		User user2 = null;
		user2 = service.getUser(user.getName(), user.getPassword());
		try {
			if (pssword.equals(user.getPassword())) {
				if (user2 == null) {
					service.add(user);
					map.addAttribute("s", "User Added");
				} else {
					map.addAttribute("s", "User exist");
					return "home";
				}

			} else {
				map.addAttribute("s", "Incorrect password");
				return "home";
			}
			return "login";
		} catch (Exception e) {
			map.addAttribute("s", "User Alredy exist");
			return "home";
		}
	}

	@RequestMapping(value = "/gotoreg", method = RequestMethod.GET)
	public String gotoReg() {
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") User user, HttpSession session) {
		User user2 = null;
		user2 = service.getUser(user.getName(), user.getPassword());
		if (user2 != null) {
			session.setAttribute("user", user2);
			return "page";
		} else {
			return "login";
		}
	}
}