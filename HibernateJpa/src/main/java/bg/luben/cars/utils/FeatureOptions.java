package bg.luben.cars.utils;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;


public class FeatureOptions {
	private List<String> features;

	public FeatureOptions(List<String> features) {
		super();
		this.features = features;
	}

	public List<String> getList() {
		List<String> featuresList = new ArrayList<String>();
		featuresList.add("Auxiliary heating");
		featuresList.add("Bluetooth");
		featuresList.add("CD player");
		featuresList.add("Central locking");
		featuresList.add("Cruise control");
		featuresList.add("Electric heated seats");
		featuresList.add("Electric seat adjustment");
		featuresList.add("Electric side mirror");
		featuresList.add("Electric windows");
		featuresList.add("Hands-free kit");
		featuresList.add("Head-up display");
		featuresList.add("Isofix (child seat anchor points)");
		featuresList.add("MP3 interface");
		featuresList.add("Multifunction steering wheel");
		featuresList.add("Navigation system");
		featuresList.add("On-board computer");
		featuresList.add("Power Assisted Steering");
		featuresList.add("Rain sensor");
		featuresList.add("Ski bag");
		featuresList.add("Start-stop system");
		featuresList.add("Sunroof");
		featuresList.add("Tuner/radio");
		featuresList.add("Ventilated Seats");
		featuresList.add("ABS");
		featuresList.add("Adaptive Cruise Control");
		featuresList.add("Adaptive lighting");
		featuresList.add("Blind Spot Monitor");
		featuresList.add("Collision Avoidance System");
		featuresList.add("Daytime running lights");
		featuresList.add("ESP");
		featuresList.add("Fog lamp");
		featuresList.add(" Four wheel drive");
		featuresList.add("Immobilizer");
		featuresList.add("Keyless Entry");
		featuresList.add("Lane Departure Warning System");
		featuresList.add("LED Headlights");
		featuresList.add("Light sensor ");
		featuresList.add("Traction control");
		featuresList.add("Xenon headlights ");
		return featuresList;
	}

	public List<String> getFeaturesList() {
		return getList();
	}

	public void setFeatures(List<String> features) {
		this.features = features;
	}
}