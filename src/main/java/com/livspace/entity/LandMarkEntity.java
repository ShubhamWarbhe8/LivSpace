package com.livspace.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "landmarks")
public class LandMarkEntity {
    @Id

    @Column(name = "lid")
    private Long Lid;

    @Column(name = "l_Name")
    private String lName;

    @Column(name = "city")
    private String city;
}