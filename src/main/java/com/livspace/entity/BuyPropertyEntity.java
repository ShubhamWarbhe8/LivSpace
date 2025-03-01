package com.livspace.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "buy_property")
public class BuyPropertyEntity {
    @Id
    @Column(name = "name")
    private String name;

    @Column(name = "landMark")
    private String landMark;

    @Column(name = "bHK")
    private String bhk;

    @Column(name = "propertyType")
    private String propertyType;

    @Column(name = "propertyStatus")
    private String propertyStatus;
}
