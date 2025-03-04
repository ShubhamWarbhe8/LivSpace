package com.livspace.controller;

import com.livspace.entity.BuyOverview;
import com.livspace.service.BuyOverViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

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

    @PostMapping("/buy-overview/save")
    public void saveShowOverview(@ModelAttribute("buyOverview") BuyOverview buyOverview,
                                 @RequestParam("pdfFile") MultipartFile file) throws IOException {
        buyOverview.setPdfFile(file.getBytes());
        buyOverview.setPdfFileName(file.getOriginalFilename());
        buyOverview.setPdfType(file.getContentType());
        buyOverViewService.saveOverView(buyOverview);
    }

    @GetMapping("/showOverViewForm")
    public String displayOverViewForm() {
        return "addOverView";
    }

    @GetMapping("/download-pdf/{id}")
    public ResponseEntity<byte[]> downloadPdf(@PathVariable String propertyId) {
        BuyOverview buyOverview = buyOverViewService.getByOverViews(propertyId);
        if (buyOverview != null) {
            return ResponseEntity.ok()
                    .contentType(MediaType.parseMediaType(buyOverview.getPdfType()))
                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + buyOverview.getPdfFileName())
                    .body(buyOverview.getPdfFile());
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/")
    public String saveProperty(@ModelAttribute BuyOverview buyOverview,
                               @RequestParam("pdfFile") MultipartFile file) throws IOException {
        buyOverViewService.savePropertyWithPdf(buyOverview, file);
        return "redirect:/view-properties";
    }
}