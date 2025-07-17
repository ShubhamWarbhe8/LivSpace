package com.livspace.service;

import com.livspace.entity.RentOverView;
import com.livspace.repository.RentOverViewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Service
public class RentOverViewService {

    @Autowired
    private RentOverViewRepository rentOverViewRepository;

    public RentOverView findByRentOverViews(String rentPropertyId) {
        return rentOverViewRepository.findByRentPropertyId(rentPropertyId);
    }

    public RentOverView getByRentOverViews(String rentPropertyId) {
        return rentOverViewRepository.getByRentPropertyId(rentPropertyId);
    }

    public void saveRentOverView(RentOverView rentOverView) {
        rentOverViewRepository.save(rentOverView);
    }

    public void saveRentPropertyWithPdf(RentOverView rentProperty, MultipartFile file) throws IOException {
        rentProperty.setPdfFile(file.getBytes());
        rentProperty.setPdfFileName(file.getOriginalFilename());
        rentProperty.setPdfType(file.getContentType());
        rentOverViewRepository.save(rentProperty);
    }
    public List<RentOverView> getAllRent() {
        return rentOverViewRepository.findAll();
    }

    public RentOverView save(RentOverView rentOverView) {
        return rentOverViewRepository.save(rentOverView);
    }

    public Optional<RentOverView> getByRentId(Long rid) {
        return rentOverViewRepository.findById(rid);
    }

    public void delete(Long rid) {
        rentOverViewRepository.deleteById(rid);
    }
}