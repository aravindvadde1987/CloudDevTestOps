package io.aravind.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import io.aravind.model.User;
import io.aravind.repo.UserRepository;

@Controller
public class UserController {
	@Autowired
	UserRepository urepo;

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/signup")
	public String getSignup() {
		return "signup";
	}

	@RequestMapping("/login")
	public String getLogin() {
		return "login";
	}

	@PostMapping("/addUser")
	public ModelAndView addUser(@RequestParam("user_email") String user_email, User user) {
		ModelAndView mv = new ModelAndView("success");
		List<User> list = urepo.findByEMAIL(user_email);

		if (list.size() != 0) {
			mv.addObject("message", "Oops!  There is already a user registered with the email provided.");

		} else {
			urepo.save(user);
			mv.addObject("message", "User has been successfully registered.");
		}

		return mv;
	}

	@GetMapping("/dummy")
	public String dummy() {
		return "dummy";
	}

	@PostMapping("/login")
	public String login_user(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, ModelMap modelMap) {

		session.setAttribute("username", username);
		return "dummy";

	}

	@GetMapping(value = "/logout")
	public String logout_user(HttpSession session) {
		session.removeAttribute("username");
		session.invalidate();
		return "redirect:/login";
	}
	
	@GetMapping(value = "/purge")
	public String purgeInstance(HttpSession session) {
		session.removeAttribute("username");
		session.invalidate();
		return "redirect:/purge";
	}

	@PostMapping("/progress")
	public String next(HttpSession session, ModelMap modelMap) {
		modelMap.put("progress", "next page");
		return "progress";

	}

	@PostMapping("/launch")
	public String launch(HttpSession session, ModelMap modelMap) {
		modelMap.put("application", "next page");
		return "application";

	}

	public static void main(String[] args) {
		for (int i = 0; i < 2000; i++) {
			System.out.println("wta");
		}
	}

}
