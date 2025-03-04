package com.livspace.service;

import com.livspace.entity.Property;
import com.livspace.repository.PropertyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service
public class PropertyService {

    @Autowired
    private PropertyRepository propertyRepository;

/*
    public Property savePropertyImage(MultipartFile multipartFile) throws IOException {
        Property property = new Property();
        property.setPropertyName(multipartFile.getOriginalFilename());
        property.setPropertyImage(multipartFile.getBytes());
        return propertyRepository.save(property);
    }
*/

    public void saveProperty(Property property) throws IOException {
        propertyRepository.save(property);
    }

    public Property getPropertyById(Long id) {
        return propertyRepository.findByPropertyId(id);
    }

    public List<Property> getProperty
            (String city, String bhk, String propertyStatus, String landMark){
        return propertyRepository.findByCityAndBhkAndPropertyStatusAndLandMark
                (city,bhk,propertyStatus,landMark);
    }


}