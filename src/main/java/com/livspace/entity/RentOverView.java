package com.livspace.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Entity
@Table(name = "rent_overview")
@Data
public class RentOverView {

    @Id
    @Column(name = "rent_property_id")
    private String rentPropertyId;

    @Column(name = "bhk")
    private String bhk;

    @Column(name = "apartment")
    private String apartment;

    @Column(name = "flat_size")
    private String flatSize;

    @Column(name = "parking")
    private String parking;

    @Column(name = "possession_date")
    private LocalDate possessionDate;

    @Column(name = "price")
    private String price;

    @Column(name = "security")
    private String security;

    @Column(name = "tower")
    private String tower;

    @Column(name = "about_property")
    private String aboutProperty;

    @Column(name = "map")
    private String map;

    @Column(name = "pdf_filename")
    private String pdfFileName;

    @Column(name = "pdf_type")
    private String pdfType;

    @Lob
    @Column(name = "pdf_file", columnDefinition = "LONGBLOB")
    private byte[] pdfFile;
}

