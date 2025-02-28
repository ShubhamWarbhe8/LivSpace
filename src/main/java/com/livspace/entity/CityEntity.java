package com.livspace.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.web.bind.annotation.GetMapping;

@Entity
@Data
@Table(name = "cities")
public class CityEntity {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private int id;
    @Column(name = "city")
    private String city;

    @Column(name = "landMark")
    private String landMark;

    @Column(name = "BHK")
    private String BHK;
}
