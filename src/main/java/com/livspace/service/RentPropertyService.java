package com.livspace.service;

import com.livspace.entity.RentProperty;
import com.livspace.repository.RentPropertyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RentPropertyService {

    @Autowired
    private RentPropertyRepository rentPropertyRepository;

    public void saveRentProperty(RentProperty rentProperty) {
        rentPropertyRepository.save(rentProperty);
    }
    public RentProperty getRentPropertyByRentPropertyId(Long rentPropertyId) {
        return rentPropertyRepository.findByRentPropertyId(rentPropertyId);
    }

    public List<RentProperty> getRentProperty
            (String city, String landMark, String bHK) {
        return rentPropertyRepository.findByCityAndLandMarkAndBhk(
                city,landMark, bHK);
/*        List<RentProperty> typeAndRentPropertyStatus = rentPropertyRepository.
                findByRentPropertyNameAndLandMarkAndBhk
                        (rentPropertyName, landMark, bHK);
        List<RentProperty> rentPropertyList = new ArrayList<>();*/

/*

        typeAndRentPropertyStatus.forEach(s -> {
                    RentProperty rentProperty = new RentProperty();
                    rentProperty.setRentPropertyName(rentPropertyName);
                    rentProperty.setLandMark(landMark);
                    rentProperty.setBhk(bHK);
                    rentPropertyList.add(rentProperty);
                }
        );
*/
    }

}