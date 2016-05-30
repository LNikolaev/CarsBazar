package bg.luben.cars.controllers;

import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import bg.luben.cars.daos.ListingDao;
import bg.luben.cars.forms.ListingRegisterForm;
import bg.luben.cars.models.Listing;
import bg.luben.cars.utils.FeatureOptions;


@Controller
@RequestMapping("listing")
public class ListingController {

	@Autowired
	ListingDao listingDao;

	
	@RequestMapping(value = "/ListingPage", method = RequestMethod.GET)
	public String getListings(Model model) {
		model.addAttribute("listings", listingDao.findAll());		
		model.addAttribute("addListingUrl", "/listing/add");		
		return "ListingPage";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addListingPage(Model model, HttpServletRequest request) {

		return "addListing";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addListing(Model model, @ModelAttribute("listing") ListingRegisterForm listingRegisterForm,
			HttpServletRequest request) throws ParseException {	
		Listing listing = new Listing();
		listing.setCubicCapacity(listingRegisterForm.getCubicCapacity());
		listing.setFuelType(listingRegisterForm.getFuelType());
		listing.setTransmission(listingRegisterForm.getTransmission());
		listing.setVehicleType(listingRegisterForm.getVehicleType());
		listing.setPower(listingRegisterForm.getPower());
		listing.setKm(listingRegisterForm.getKm());
		listing.setDoorsNumber(listingRegisterForm.getDoorsNumber());
		listing.setColour(listingRegisterForm.getColour());
		listing.setYear(listingRegisterForm.getYear());
		listing.setCarCondition(listingRegisterForm.getCarCondition());
		listing.setPrice(listingRegisterForm.getPrice());		
		listing.setDateListing(listingRegisterForm.getDateListing());
		listing.setFeatures(listingRegisterForm.getFeatures());
		listing.setMoreInformation(listingRegisterForm.getMoreInformation());
		
		listingDao.create(listing);
		
		model.addAttribute("listings", listingDao.findAll());
		return "redirect:ListingPage";
	}
	
	
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editListingPage(Integer listingId, Model model, HttpServletRequest request) {
		Listing listing = listingDao.find(listingId);
		model.addAttribute("listing", listing);
		return "editListing";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String editListing(Model model, @ModelAttribute("listing") ListingRegisterForm listingRegisterForm, HttpServletRequest request) {
		Listing listing = listingDao.find(listingRegisterForm.getId());
		listing.setCubicCapacity(listingRegisterForm.getCubicCapacity());
		listing.setFuelType(listingRegisterForm.getFuelType());
		listing.setTransmission(listingRegisterForm.getTransmission());
		listing.setVehicleType(listingRegisterForm.getVehicleType());
		listing.setPower(listingRegisterForm.getPower());
		listing.setKm(listingRegisterForm.getKm());
		listing.setDoorsNumber(listingRegisterForm.getDoorsNumber());
		listing.setColour(listingRegisterForm.getColour());
		listing.setYear(listingRegisterForm.getYear());
		listing.setCarCondition(listingRegisterForm.getCarCondition());
		listing.setPrice(listingRegisterForm.getPrice());		
		listing.setDateListing(listingRegisterForm.getDateListing());
		listing.setFeatures(listingRegisterForm.getFeatures());
		listing.setMoreInformation(listingRegisterForm.getMoreInformation());
		listingDao.update(listing);
		//TODO remove some fields
		
		return "redirect:ListingPage";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Integer listingId, Model model,  HttpServletRequest request) {
		listingDao.deleteById(listingId);
		return "redirect:ListingPage";
	}	
}
