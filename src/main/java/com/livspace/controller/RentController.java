package com.livspace.controller;

import com.livspace.domain.CityDomain;
import com.livspace.entity.CityEntity;
import com.livspace.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class RentController {
    @Autowired
    private CityService cityService;

    @GetMapping("/re")
    public String showForm(){
        return "rent";
    }

    @GetMapping("/rent")
    public String getAllCities(@RequestParam(value = "city", required = false) String selectedCity, Model model)  {

        List<CityDomain> cityDomainList = new ArrayList<>();
        List<CityEntity> allCities = cityService.getAllCities();
        allCities.forEach(s -> {
                    CityDomain cityDomain = new CityDomain();
                    cityDomain.setCity(s.getCity());
                    cityDomainList.add(cityDomain);
                }
        );
        model.addAttribute("cities", cityDomainList);
        if (selectedCity == null || selectedCity.isEmpty()) {
            selectedCity = "";
        }
        model.addAttribute("selectedCity", selectedCity);
        return "rent";
    }
}