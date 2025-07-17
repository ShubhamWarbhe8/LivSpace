package com.livspace.repository;

import com.livspace.entity.RentOverView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RentOverViewRepository extends JpaRepository<RentOverView,Long> {
    RentOverView findByRentPropertyId(String rentPropertyId);
    RentOverView getByRentPropertyId(String rentPropertyId);
}
