package com.livspace.controller;

import com.livspace.domain.CityDomain;
import com.livspace.entity.CityEntity;
import com.livspace.service.CityService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class CityController {

    @Autowired
    private CityService cityService;

    @GetMapping(value = {"/getCities"})
    public String getAllCities(Model model) {
        CityDomain cityDomain = new CityDomain();
        List<CityDomain> cityDomainList=new ArrayList<>();
        //controller(domain) -> service (entity)-> repo call -> database
        List<CityEntity> allCities = cityService.getAllCities();
        allCities.forEach(s->{
                    cityDomain.setCity(s.getCity());
                    cityDomain.setLandMark(s.getLandMark());
                    cityDomain.setBHK(s.getBHK());
                }
                );
        cityDomainList.add(cityDomain);
        model.addAttribute("cities", cityDomainList);
        return "buy";
    }

    @GetMapping("/landmarks")
    @ResponseBody
    public List<CityDomain> getLandMarkByCity(@RequestParam String city){
        CityDomain cityDomain = new CityDomain( );
        List<CityEntity> allCities = cityService.getLandMarkByCity(city);
        List<CityDomain> cityDomainList = new ArrayList<>();
        allCities.forEach(s->{
                    cityDomain.setCity(s.getCity());
                    cityDomain.setLandMark(s.getLandMark());
                    cityDomain.setBHK(s.getBHK());
                }
        );

        cityDomainList.add(cityDomain);
        return cityDomainList;
    }
}
