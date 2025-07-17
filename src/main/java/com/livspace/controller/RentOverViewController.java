package com.livspace.controller;

import com.livspace.entity.RentOverView;
import com.livspace.service.RentOverViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.time.LocalDate;

@Controller
@RequestMapping("/")
public class RentOverViewController {

    @Autowired
    private RentOverViewService rentOverViewService;

    @GetMapping("/showRentOverView")
    public String showRentOverView(@RequestParam("rentPropertyId") String rentPropertyId, Model model) {
        RentOverView rentOverView = rentOverViewService.findByRentOverViews(rentPropertyId);
        model.addAttribute("rentProperty", rentOverView);
        return "viewRentProperties";
    }

    @GetMapping("/showRentOverViewForm")
    public String displayRentOverViewForm(Model model) {
        model.addAttribute("rentOverview", new RentOverView());
        return "addRentOverView";
    }

    @GetMapping("/rents/download-pdf/{rid}")
    public ResponseEntity<byte[]> downloadRentPdf(@PathVariable("rid") String rid) {
        RentOverView rentOverView = rentOverViewService.getByRentOverViews(rid);
        if (rentOverView == null) {
            return ResponseEntity.notFound().build();
        }
        if (rentOverView.getPdfFile() == null || rentOverView.getPdfFileName() == null) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body(null); // PDF not uploaded
        }
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_PDF);
        headers.setContentDisposition(ContentDisposition.attachment()
                .filename(rentOverView.getPdfFileName()).build());
        return new ResponseEntity<>(rentOverView.getPdfFile(),headers,HttpStatus.OK);
    }

    @PostMapping("/uploadr")
    public String handleRentUpload(@RequestParam("pdfFile") MultipartFile pFile,
                                   @RequestParam("rentPropertyId") String rentPropertyId,
                                   Model model,
                                   @RequestParam("bhk") String bhk,
                                   @RequestParam("apartment") String apartment,
                                   @RequestParam("flatSize") String flatSize,
                                   @RequestParam("parking") String parking,
                                   @RequestParam("possessionDate") String possessionDate,
                                   @RequestParam("price") String price,
                                   @RequestParam("security") String security,
                                   @RequestParam("tower") String tower,
                                   @RequestParam("aboutProperty") String aboutProperty)
            throws IOException {

        LocalDate possessionDate1 = LocalDate.parse(possessionDate);
        RentOverView rentOverView = new RentOverView();
        rentOverView.setPdfFile(pFile.getBytes());
        rentOverView.setPdfFileName(pFile.getOriginalFilename());
        rentOverView.setPdfType(pFile.getContentType());
        rentOverView.setRentPropertyId(rentPropertyId);
        rentOverView.setBhk(bhk);
        rentOverView.setApartment(apartment);
        rentOverView.setFlatSize(flatSize);
        rentOverView.setParking(parking);
        rentOverView.setPossessionDate(possessionDate1);
        rentOverView.setPrice(price);
        rentOverView.setSecurity(security);
        rentOverView.setTower(tower);
        rentOverView.setAboutProperty(aboutProperty);
        rentOverViewService.saveRentOverView(rentOverView);
        model.addAttribute("rentProperty", rentOverView);

        return "redirect:/showRentOverViewForm";
    }
}