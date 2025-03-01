package com.livspace.controller;

import com.livspace.domain.CityDomain;
import com.livspace.entity.CityEntity;
import com.livspace.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class SellController {
    @Autowired
    private CityService cityService;

    @GetMapping(value = {"/sell"})
    public String getAllCities(Model model) {

        List<CityDomain> cityDomainList = new ArrayList<>();
        //controller(domain) -> service (entity)-> repo call -> database
        List<CityEntity> allCities = cityService.getAllCities();
        allCities.forEach(s -> {
                    CityDomain cityDomain = new CityDomain();
                    cityDomain.setCity(s.getCity());
                    cityDomainList.add(cityDomain);
                }
        );
        model.addAttribute("cities", cityDomainList);
        return "sell";
    }
}