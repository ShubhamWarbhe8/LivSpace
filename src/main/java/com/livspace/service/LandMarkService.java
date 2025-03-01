package com.livspace.service;

import com.livspace.entity.CityEntity;
import com.livspace.entity.LandMarkEntity;
import com.livspace.repository.CityRepository;
import com.livspace.repository.LandMarkRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LandMarkService {
    @Autowired
    private CityRepository cityRepository;

    @Autowired
    private LandMarkRepository landmarkRepository;

    public List<LandMarkEntity> getLandmarksByCity(String city) {
        return landmarkRepository.findByCity(city);
    }
}
