package bg.luben.cars.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import bg.luben.cars.models.Car;

public class SimpleFormController{
	
	protected Map opel(HttpServletRequest request) throws Exception {
		Map opel = new HashMap();
		List<String> model = new ArrayList<String>();
		model.add("Vectra");
		model.add("Insignia");
		model.add("Kadet");
		model.add("Astra");
		opel.put("modelList", model);
		return opel;
	}
}
