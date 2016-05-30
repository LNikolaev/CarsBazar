package bg.luben.cars.daos;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import bg.luben.cars.models.Listing;

@Repository
@Transactional
public class ListingDao implements CRUDDao<Listing, Integer> {

	@PersistenceContext(unitName = "persistenceUnit")
	private EntityManager entityManager;
	private static final String SELECT_QUERY = "SELECT l FROM Listing l";

	@Override
	public Listing create(Listing listing) throws ParseException {
		entityManager.persist(listing);
		return listing;
	}

	@Override
	public Listing find(Integer id) {
		return entityManager.find(Listing.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Listing> findAll() {
		Query query = entityManager.createQuery(SELECT_QUERY);
		List<Listing> listings = query.getResultList();
		return listings;
	}

	@Override
	public Listing update(Listing listing) {
		entityManager.merge(listing);
		return listing;
	}

	@Override
	public void delete(Listing listing) {
		entityManager.remove(listing);
	}

	@Override
	public void deleteById(Integer id) {
		entityManager.remove(find(id));
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
}
