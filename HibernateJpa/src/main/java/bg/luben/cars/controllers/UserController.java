package bg.luben.cars.controllers;

import java.text.ParseException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import bg.luben.cars.daos.UserDao;
import bg.luben.cars.forms.UserRegisterForm;
import bg.luben.cars.models.User;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserDao userDao;

	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String getUsers(Model model) {
		model.addAttribute("users", userDao.findAll());
		model.addAttribute("addUserUrl", "/user/add");		
		return "index";
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addUserPage(Model model, HttpServletRequest request) {

		return "addUser";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addUser(Model model, @ModelAttribute("user") UserRegisterForm userRegisterForm,
			HttpServletRequest request) throws ParseException {	
		User user = new User();
		user.setUsername(userRegisterForm.getUsername());
		user.setPassword(userRegisterForm.getPassword());
		user.setFirstName(userRegisterForm.getFirstName());
		user.setLastName(userRegisterForm.getLastName());
		user.setRegistred(userRegisterForm.getRegistred());
		user.setSalt(userRegisterForm.getSalt());
		user.setEnabled(userRegisterForm.isEnabled());
		user.setConfirmationCode(userRegisterForm.getConfirmationCode());
		user.setEmail(userRegisterForm.getEmail());
		user.setPhoneNumber(userRegisterForm.getPhoneNumber());
		user.setHomePage(userRegisterForm.getHomePage());
		userDao.create(user);
		
		model.addAttribute("users", userDao.findAll());


		return "redirect:index";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editUserPage(Integer userId, Model model, HttpServletRequest request) {
		User user = userDao.find(userId);
		model.addAttribute("user", user);
		return "editUser";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String editUser(Model model, @ModelAttribute("user") UserRegisterForm userRegisterForm, HttpServletRequest request) {
		User user = userDao.find(userRegisterForm.getId());
		user.setPassword(userRegisterForm.getPassword());
		user.setFirstName(userRegisterForm.getFirstName());
		user.setLastName(userRegisterForm.getLastName());
		user.setEmail(userRegisterForm.getEmail());
		user.setPhoneNumber(userRegisterForm.getPhoneNumber());
		user.setHomePage(userRegisterForm.getHomePage());
		userDao.update(user);
		
		return "redirect:index";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Integer userId, Model model,  HttpServletRequest request) {
		userDao.deleteById(userId);
		return "redirect:index";
	}	
}
