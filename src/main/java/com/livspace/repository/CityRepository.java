package com.livspace.repository;

import com.livspace.entity.CityEntity;
import com.livspace.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.io.Serializable;
import java.util.List;

public interface CityRepository extends JpaRepository<CityEntity, Serializable> {
    @Query(value = "select * from cityEntity where city = :city", nativeQuery = true)

   public CityEntity findByCityAndLandmarkAndBHK(String city, String landmark, String BHK);

    List<CityEntity> findByCity(String city);
}
