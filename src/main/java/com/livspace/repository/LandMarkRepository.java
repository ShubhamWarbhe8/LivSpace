package com.livspace.repository;

import com.livspace.entity.LandMarkEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LandMarkRepository extends JpaRepository<LandMarkEntity, Long> {
    List<LandMarkEntity> findByCity(String city);
}