package com.livspace.repository;

import com.livspace.entity.CityEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public interface CityRepository extends JpaRepository<CityEntity, Serializable> {
    @Query(value = "select * from cityEntity where city = :city", nativeQuery = true)
    List<CityEntity> findByCity(String city);
}
