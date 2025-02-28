package com.livspace.service;


import com.livspace.entity.CityEntity;

import java.util.List;

public interface CityService {
    List<CityEntity> getAllCities();

    public CityEntity addCityAndLandMarkAndBHK(String city, String landMark, String BHK);

    List<CityEntity> getLandMarkByCity(String city);
}
