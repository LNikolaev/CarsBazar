package bg.luben.cars.controllers;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/cars/brands")
public class JSONController {

	@RequestMapping(method = RequestMethod.GET)
	public @ResponseBody Map<String, List<String>> getCarJSON() {

		Map<String, List<String>> map = new HashMap<String, List<String>>();
		map.put("Opel", Arrays.asList("Vectra", "Astra", "Kadet"));
		map.put("VW", Arrays.asList("GolF", "Golf gt"));
		map.put("Audi", Arrays.asList("A3", "A4", "Q7"));
		map.put("Skoda", Arrays.asList("Fabia", "Octavia", "Superb"));
		map.put("BMW", Arrays.asList("230", "320", "328d"));
		map.put("Alfa Romeo", Arrays.asList("Gt", "Gtv", "MiTo"));
		map.put("Fiat", Arrays.asList("Punto", "Panda", "Tipo"));
		
		// CarBrand brand1 = new CarBrand("Opel", Arrays.asList( new
		// CarModel("Vectra"), new CarModel("Astra"), new CarModel("Omega")));
		// CarBrand brand2 = new CarBrand("VW", Arrays.asList( new
		// CarModel("Golf"), new CarModel("GOLF GT")));
		//
		// return Arrays.asList(brand1, brand2);
		return map;
	}
}

class CarBrand {
	private String name;
	private List<CarModel> models;

	public CarBrand(String name, List<CarModel> models) {
		super();
		this.name = name;
		this.models = models;
	}

	public CarBrand() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<CarModel> getModels() {
		return models;
	}

	public void setModels(List<CarModel> models) {
		this.models = models;
	}

}

class CarModel {
	private String name;

	public CarModel(String name) {
		super();
		this.name = name;
	}

	public CarModel() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}