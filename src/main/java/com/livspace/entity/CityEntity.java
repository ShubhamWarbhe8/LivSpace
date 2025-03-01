package com.livspace.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "cities")
public class CityEntity {
    @Id
    @Column(name = "city_id")
    private int cityId;

    @Column(name = "city")
    private String city;
}