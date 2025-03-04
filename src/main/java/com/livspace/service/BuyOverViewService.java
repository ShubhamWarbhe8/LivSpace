package com.livspace.service;

import com.livspace.entity.BuyOverview;
import com.livspace.repository.BuyOverviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
public class BuyOverViewService {

    @Autowired
    private BuyOverviewRepository buyOverviewRepository;

    public BuyOverview findByOverViews(String propertyId) {
        BuyOverview byPropertyId = buyOverviewRepository.findByPropertyId(propertyId);
        return byPropertyId;
    }

    public BuyOverview getByOverViews(String propertyId) {
        BuyOverview byPropertyId = buyOverviewRepository.getByPropertyId(propertyId);
        return byPropertyId;
    }
    public void saveOverView(BuyOverview buyOverview){
        buyOverviewRepository.save(buyOverview);
    }
    public void savePropertyWithPdf(BuyOverview property, MultipartFile file) throws IOException {
        property.setPdfFile(file.getBytes());
        property.setPdfFileName(file.getOriginalFilename());
        property.setPdfType(file.getContentType());
        buyOverviewRepository.save(property);
    }
}
