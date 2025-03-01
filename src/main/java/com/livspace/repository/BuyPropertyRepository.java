package com.livspace.repository;

import com.livspace.entity.BuyPropertyEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BuyPropertyRepository extends JpaRepository<BuyPropertyEntity, Long> {

    List<BuyPropertyEntity> findByNameAndLandMarkAndBhkAndPropertyTypeAndPropertyStatus
            (String name, String landMark, String bHKType, String propertyType, String propertyStatus);
}