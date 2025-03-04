package com.livspace.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "rent_property")
public class RentProperty {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long rentPropertyId;

    @Column(name = "rent_property_name")
    private String rentPropertyName;

    @Column(name = "landMark")
    private String landMark;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @Column(name = "rent_property_price")
    private String rentPropertyPrice;

    @Column(name = "rent_property_area_size")
    private String rentPropertyAreaSize;

    @Column(name = "bhk")
    private String bhk;

    @Lob
    private byte[] rentPropertyImage;
}
