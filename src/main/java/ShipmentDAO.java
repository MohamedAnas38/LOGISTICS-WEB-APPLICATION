import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ShipmentDAO {
    private static List<Shipment> shipments = new ArrayList<>();
    private static int idCounter = 1;

    public void addShipment(Shipment shipment) {
        shipment.setId(idCounter++);
        shipments.add(shipment);
    }

    public List<Shipment> getAllShipments() {
        return shipments;
    }
    public void cancelShipment(int id) {
        Iterator<Shipment> iterator = shipments.iterator();
        while (iterator.hasNext()) {
            Shipment shipment = iterator.next();
            if (shipment.getId() == id) {
                iterator.remove();
                break;
            }
        }
    }
    public void updateShipmentStatus(int id, String status, String place, int estimatedDays) {
        for (Shipment shipment : shipments) {
            if (shipment.getId() == id) {
                shipment.setStatus(status);
                shipment.setPlace(place);
                shipment.setEstimatedDays(estimatedDays);
                break;
            }
        }
    }
}