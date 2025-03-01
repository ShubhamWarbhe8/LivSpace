package com.livspace.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "property")
public class Property {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long propertyId;

    @Column(name = "pName")
    private String propertyName;

    @Column(name = "landMark")
    private String landMark;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @Column(name = "property_price")
    private String propertyPrice;

    @Column(name = "property_area_size")
    private String propertyAreaSize;

    @Column(name = "bhk")
    private String bhk;

    @Column(name = "property_status")
    private String propertyStatus;

    @Lob
    private byte[] propertyImage;
}
