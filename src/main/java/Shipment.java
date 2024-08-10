
public class Shipment {
	private int id;
	private String fromName;
	private String destination;
	private String depature;
	private String toName;
	
	private String status;
	private String place;
	private int estimatedDays;

	// Constructors, Getters, and Setters
	public Shipment() {
	}

	public Shipment(int id, String toName, String destination, String fromName, String depature, String status,
			String place, int estimatedDays) {
		this.id = id;
		this.fromName = fromName;
		this.destination = destination;
		this.toName = toName;
		this.status = status;
		this.place = place;
		this.estimatedDays = estimatedDays;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFromName() {
		return fromName;
	}

	public void setFromName(String fromName) {
		this.fromName = fromName;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDepature() {
		return depature;
	}

	public void setDepature(String depature) {
		this.depature = depature;
	}

	public String getToName() {
		return toName;
	}

	public void setToName(String toName) {
		this.toName = toName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getEstimatedDays() {
		return estimatedDays;
	}

	public void setEstimatedDays(int estimatedDays) {
		this.estimatedDays = estimatedDays;
	}

}
