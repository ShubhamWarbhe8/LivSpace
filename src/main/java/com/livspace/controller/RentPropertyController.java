package com.livspace.controller;

import com.livspace.domain.CityDomain;
import com.livspace.entity.CityEntity;
import com.livspace.entity.RentProperty;
import com.livspace.service.CityService;
import com.livspace.service.RentPropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class RentPropertyController {

    @Autowired
    private RentPropertyService rentPropertyService;

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

    @GetMapping("/showRentPropertyImage")
    public String showRentUploadForm() {
        return "rentPropertyImage";
    }

    @GetMapping("/rent-property")
    public String showPropertyDetails(@RequestParam("city") String city,
                                      @RequestParam("landMark") String landMark,
                                      @RequestParam("bhk") String bhk,
                                      Model model) {
        List<RentProperty> rentPropertyList = rentPropertyService.getRentProperty(city, landMark, bhk);
        model.addAttribute("rentProperties", rentPropertyList);
        return "rent-property";
    }

    @GetMapping("/showRentPropertyPage")
    public String showRentPropertyPage() {
        return "addRentProperty";
    }

    @GetMapping("/rentProperty/image/{rentPropertyId}")
    public ResponseEntity<ByteArrayResource> serveImage(@PathVariable Long rentPropertyId) {
        RentProperty rentProperty = rentPropertyService.getRentPropertyByRentPropertyId(rentPropertyId);
        return ResponseEntity.ok()
                .contentType(MediaType.IMAGE_JPEG)
                .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=\"" + rentProperty.getRentPropertyName() + ".jpg\"")
                .body(new ByteArrayResource(rentProperty.getRentPropertyImage()));
    }

    @PostMapping(value = "/addRentProperty")
    public String saveRentProperty(@RequestParam("rentPropertyName") String rentPropertyName,
                             @RequestParam("landMark") String landMark,
                             @RequestParam("address") String address,
                             @RequestParam("city") String city,
                             @RequestParam("rent_property_price") String rentPropertyPrice,
                             @RequestParam("rent_property_area_size") String rentPropertyAreaSize,
                             @RequestParam("bhk") String bhk,
                             @RequestParam("rentPropertyImage") MultipartFile rentPropertyImage
    ) throws IOException {
        RentProperty rentProperty = new RentProperty();
        rentProperty.setRentPropertyName(rentPropertyName);
        rentProperty.setLandMark(landMark);
        rentProperty.setAddress(address);
        rentProperty.setCity(city);
        rentProperty.setRentPropertyPrice(rentPropertyPrice);
        rentProperty.setRentPropertyAreaSize(rentPropertyAreaSize);
        rentProperty.setBhk(bhk);
        rentProperty.setRentPropertyImage(rentPropertyImage.getBytes());

        rentPropertyService.saveRentProperty(rentProperty);

        return "redirect:/showRentPropertyPage";
    }
}
