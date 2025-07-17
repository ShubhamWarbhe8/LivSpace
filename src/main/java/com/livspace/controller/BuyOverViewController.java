package com.livspace.controller;

import com.livspace.entity.BuyOverview;
import com.livspace.service.BuyOverViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.time.LocalDate;

@Controller
public class BuyOverViewController {

    @Autowired
    private BuyOverViewService buyOverViewService;

    @GetMapping("/showOverView")
    public String showOverView(@RequestParam("propertyId") String propertyId, Model model) {
        BuyOverview overViews = buyOverViewService.findByOverViews(propertyId);
        model.addAttribute("property", overViews);
        return "viewProperties";
    }


    @GetMapping("/showOverViewForm")
    public String displayOverViewForm(Model model) {
        model.addAttribute("buyOverview", new BuyOverview());
        return "addOverView";
    }

    @GetMapping("/download-pdf/{id}")
    public ResponseEntity<byte[]> downloadPdf(@PathVariable("id") String id) {
        BuyOverview buyOverview = buyOverViewService.getByOverViews(id);
        if (buyOverview != null) {
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_PDF);
            headers.setContentDisposition(ContentDisposition.attachment()
                    .filename(buyOverview.getPdfFileName())
                    .build());
            var pdfFile = buyOverview.getPdfFile();
            return new ResponseEntity<>(pdfFile, headers, HttpStatus.OK);
        } else {
            return ResponseEntity.notFound().build();
        }
    }


    @PostMapping("/upload")
    public String handleUpload(@RequestParam("pdfFile") MultipartFile file,
                               @RequestParam("propertyId") String propertyId,
                               Model model,
                               @RequestParam("bhk") String bhk,
                               @RequestParam("apartment") String apartment,
                               @RequestParam("builder") String builder,
                               @RequestParam("dateOfEstablishment") String dateOfEstablishment,
                               @RequestParam("flatSize") String flatSize,
                               @RequestParam("parking") String parking,
                               @RequestParam("possessionDate") String possessionDate,
                               @RequestParam("price") String price,
                               @RequestParam("projectArea") String projectArea,
                               @RequestParam("security") String security,
                               @RequestParam("tower") String tower,
                               @RequestParam("units") String units,
                               @RequestParam("map") String map,
                               @RequestParam("aboutProperty") String aboutProperty)
            throws IOException {

        LocalDate dateOfEstablishment1 = LocalDate.parse(dateOfEstablishment);
        LocalDate possessionDate1 = LocalDate.parse(possessionDate);
        BuyOverview buyOverview = new BuyOverview();
        buyOverview.setPdfFile(file.getBytes());
        buyOverview.setPdfFileName(file.getOriginalFilename());
        buyOverview.setPdfType(file.getContentType());
        buyOverview.setPropertyId(propertyId);
        buyOverview.setBhk(bhk);
        buyOverview.setApartment(apartment);
        buyOverview.setBuilder(builder);
        buyOverview.setDateOfEstablishment(dateOfEstablishment1);
        buyOverview.setFlatSize(flatSize);
        buyOverview.setParking(parking);
        buyOverview.setPossessionDate(possessionDate1);
        buyOverview.setPrice(price);
        buyOverview.setProjectArea(projectArea);
        buyOverview.setSecurity(security);
        buyOverview.setTower(tower);
        buyOverview.setUnits(units);
        buyOverview.setAboutProperty(aboutProperty);
        buyOverview.setMap(map);
        buyOverViewService.saveOverView(buyOverview);
        model.addAttribute("property", buyOverview);

        return "redirect:/showOverViewForm";
    }
}