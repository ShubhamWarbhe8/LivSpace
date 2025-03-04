package com.livspace.repository;

import com.livspace.entity.Property;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PropertyRepository extends JpaRepository<Property, Long> {

    List<Property> findByCityAndBhkAndPropertyStatusAndLandMark
            (String city, String bhk, String propertyStatus, String landMark);

    Property findByPropertyId(Long propertyId);

}