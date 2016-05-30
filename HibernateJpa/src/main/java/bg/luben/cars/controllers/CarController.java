package bg.luben.cars.controllers;

import java.text.ParseException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import bg.luben.cars.daos.CarDao;
import bg.luben.cars.forms.CarRegisterForm;
import bg.luben.cars.models.Car;

@Controller
@RequestMapping("car")
public class CarController {

	@Autowired
	private CarDao carDao;

	@RequestMapping(value = "/carPage", method = RequestMethod.GET)
	public String getCars(Model model) {
		model.addAttribute("users", carDao.findAll());
		model.addAttribute("addCarUrl", "/car/add");
		return "carPage";
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addCarPage(Model model, HttpServletRequest request) {

		return "addCar";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addCar(Model model, @ModelAttribute("car") CarRegisterForm carRegisterForm,
			HttpServletRequest request) throws ParseException {
		Car car = new Car();
		car.setProducer(carRegisterForm.getProducer());
		car.setModel(carRegisterForm.getModel());
		carDao.create(car);

		model.addAttribute("cars", carDao.findAll());

		return "redirect:carPage";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editUserPage(Integer userId, Model model, HttpServletRequest request) {
		Car car = carDao.find(userId);
		model.addAttribute("car", car);
		return "editCar";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String editUser(Model model, @ModelAttribute("car") CarRegisterForm carRegisterForm,
			HttpServletRequest request) {
		Car car = new Car();
		car.setProducer(carRegisterForm.getProducer());
		car.setModel(carRegisterForm.getModel());

		carDao.update(car);

		return "redirect:carPage";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Integer userId, Model model, HttpServletRequest request) {
		carDao.deleteById(userId);
		return "redirect:carPage";
	}
}
