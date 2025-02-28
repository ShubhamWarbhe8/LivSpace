package com.livspace.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "user_entity")
@Data
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "firstname")
    private String firstname;

    @Column(name = "lastname")
    private String lastname;

    @Column(name = "email-id")
    private String emailId;

    @Column(name = "gender")
    private String gender;

    @Column(name = "city")
    private String city;

    @Column(name = "mobileNo", length = 10)
    private String mobileNumber;

    @Column(name = "password")
    private String password;
}