package com.livspace.controller;

import com.livspace.entity.LandMarkEntity;
import com.livspace.service.LandMarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/")
public class LandMarkController {

    @Autowired
    private LandMarkService landMarkService;

    @GetMapping("/landMark")
    public List<String> getLandmarksByCity(@RequestParam String city) {
         return landMarkService.getLandmarksByCity(city).stream().map(LandMarkEntity::getLName).collect(Collectors.toList());
    }

}

