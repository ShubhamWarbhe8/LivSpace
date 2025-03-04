package com.livspace.service;

import com.livspace.entity.CityEntity;

import java.util.List;

public interface CityService {
    List<CityEntity> getAllCities();

    public CityEntity addCity(String city);

    List<CityEntity> getLandMarkByCity(String city);
}