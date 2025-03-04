package com.livspace.service;

import com.livspace.entity.CityEntity;

import java.util.List;

public interface CityService {
    List<CityEntity> getAllCities();

    List<CityEntity> getLandMarkByCity(String city);
}