package com.livspace.repository;

import com.livspace.entity.RentProperty;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RentPropertyRepository extends JpaRepository<RentProperty, Long> {

    List<RentProperty> findByCityAndLandMarkAndBhk
            (String city, String landMark, String bHK);

    RentProperty findByRentPropertyId(Long rentPropertyId);
}
