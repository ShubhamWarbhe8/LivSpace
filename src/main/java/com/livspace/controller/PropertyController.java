package com.livspace.controller;

import com.livspace.entity.Property;
import com.livspace.service.PropertyService;
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
import java.util.List;

@Controller
public class PropertyController {

    @Autowired
    private PropertyService propertyService;

    @GetMapping("/uploadimage")
    public String showUploadForm() {
        return "uploadimage";
    }

    @GetMapping("/buy-property")
    public String showPropertyDetails(@RequestParam("city") String city,
                                      @RequestParam("landMark") String landMark,
                                      @RequestParam("bhk") String bhk,
                                      @RequestParam("status") String propertyStatus,
                                      Model model) {
        List<Property> propertyList = propertyService.getProperty(city, bhk, propertyStatus, landMark);
        model.addAttribute("properties", propertyList);
        return "buy-property";
    }

    @GetMapping("/showPropertyPage")
    public String showPropertyPage() {
        return "addProperty";
    }

    @GetMapping("/property/image/{id}")
    public ResponseEntity<ByteArrayResource> serveImage(@PathVariable Long id) {
        Property property = propertyService.getPropertyById(id);
        return ResponseEntity.ok()
                .contentType(MediaType.IMAGE_JPEG)
                .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=\"" + property.getPropertyName() + ".jpg\"")
                .body(new ByteArrayResource(property.getPropertyImage()));
    }

    @PostMapping(value = "/addProperty")
    public void saveProperty(@RequestParam("name") String name,
                             @RequestParam("landMark") String landMark,
                             @RequestParam("address") String address,
                             @RequestParam("city") String city,
                             @RequestParam("propertyStatus") String propertyStatus,
                             @RequestParam("propertyPrice") String propertyPrice,
                             @RequestParam("propertyAreaSize") String propertyAreaSize,
                             @RequestParam("bhk") String bhk,
                             @RequestParam("propertyImage") MultipartFile propertyImage
    ) throws IOException {
        Property property = new Property();
        property.setPropertyName(name);
        property.setLandMark(landMark);
        property.setAddress(address);
        property.setCity(city);
        property.setPropertyStatus(propertyStatus);
        property.setPropertyPrice(propertyPrice);
        property.setPropertyAreaSize(propertyAreaSize);
        property.setBhk(bhk);
        property.setPropertyImage(propertyImage.getBytes());

        propertyService.saveProperty(property);
    }
}