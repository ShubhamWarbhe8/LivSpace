package com.livspace.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@Entity
@Table(name = "buy_overview")
public class BuyOverview {
    @Id
    @Column(name = "property_id")
    private String propertyId;

    @Column(name = "bhk")
    private String bhk;

    @Column(name = "parking")
    private String parking;

    @Column(name = "apartment")
    private String apartment;

    @Column(name = "builder")
    private String builder;

    @DateTimeFormat
    @Column(name = "date_of_establishment")
    private LocalDate dateOfEstablishment;

    @Column(name = "tower")
    private String tower;

    @Column(name = "units")
    private String units;

    @Column(name = "flat_size")
    private String flatSize;

    @Column(name = "project_area")
    private String projectArea;

    @Column(name = "price")
    private String price;

    @DateTimeFormat
    @Column(name = "possession_date")
    private LocalDate possessionDate;

    @Column(name = "security")
    private String security;

    @Column(name = "about_property")
    private String aboutProperty;

    @Lob
    private byte[] propertyImage;

    @Column(name = "pdf_file", columnDefinition = "LONGBLOB")
    private byte[] pdfFile;

    @Column(name = "pdf_filename")
    private String pdfFileName;

    @Column(name = "pdf_type")
    private String pdfType;

    @Column(name = "mime_type")
    private String mimeType;

    @Column(name = "map")
    private String map;
}