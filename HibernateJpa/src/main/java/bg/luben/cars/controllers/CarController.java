package bg.luben.cars.controllers;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		model.addAttribute("cars", carDao.findAll());
		model.addAttribute("addCarUrl", "/car/add");
		return "carPage";
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addCarPage(Model model, HttpServletRequest request) {

		return "addCar";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addCar(Model model, @ModelAttribute("car") CarRegisterForm carRegisterForm,
			HttpServletRequest request, @Validated Car test, BindingResult result) throws ParseException {
		model.addAttribute("test", test);
				
		        	producerAndModel(model);		
		            model.addAttribute("test", test);
		
		           
		
		        

		
		
		
		
		
		Car car = new Car();
		car.setProducer(carRegisterForm.getProducer());
		car.setModel(carRegisterForm.getModel());
		carDao.create(car);	

		model.addAttribute("cars", carDao.findAll());

		return "redirect:carPage";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editCarPage(Integer carId, Model model, HttpServletRequest request) {
		Car car = carDao.find(carId);
		model.addAttribute("car", car);
		return "editCar";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String editCar(Model model, @ModelAttribute("car") CarRegisterForm carRegisterForm,
			HttpServletRequest request) {
		Car car = carDao.find(carRegisterForm.getId());
		car.setProducer(carRegisterForm.getProducer());
		car.setModel(carRegisterForm.getModel());
		carDao.update(car);

		return "redirect:carPage";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Integer carId, Model model, HttpServletRequest request) {
		carDao.deleteById(carId);
		return "redirect:carPage";
	}
	
	private void producerAndModel(Model model) {
		List<String> opelList = new ArrayList<String>();
		opelList.add("Vectra");
		opelList.add("Insignia");
		opelList.add("Kadet");
		opelList.add("Astra");
		model.addAttribute("opelList", opelList);
	}
}
