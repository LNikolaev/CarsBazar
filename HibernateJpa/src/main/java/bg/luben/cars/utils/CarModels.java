package bg.luben.cars.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import bg.luben.cars.models.Car;

public class CarModels {

	
	public static void main(String[] args) {
		Map<String, LinkedList<String>> carList = new HashMap<String, LinkedList<String>>();
		carList.put("Opel", new LinkedList<String>());
		carList.get("Opel").add("Astra");
		carList.get("Opel").add("Vectra");
		carList.get("Opel").add("Tigra");
		
		for (Entry<String, LinkedList<String>> entry : carList.entrySet()) {
			String key = entry.getKey();
			System.out.println("Producer: " + key);
			for (String values : entry.getValue()) {
				System.out.println("Model: " +values);
			}
			
		}
	}
}