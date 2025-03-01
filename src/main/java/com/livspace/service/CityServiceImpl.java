package com.livspace.service;

import com.livspace.entity.CityEntity;
import com.livspace.repository.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityServiceImpl implements CityService {
    @Autowired
    private CityRepository cityRepository;

    @Override
    public List<CityEntity> getAllCities() {
        return cityRepository.findAll();
    }

    @Override
    public CityEntity addCity(String city) {
        CityEntity cityEntity = (CityEntity) cityRepository.findByCity(city);
        return new CityEntity();
    }

    @Override
    public List<CityEntity> getLandMarkByCity(String city) {
        var cities = cityRepository.findByCity(city);
        return cities;
    }
}