package com.livspace.domain;

import lombok.Data;

import java.io.Serializable;

@Data
public class UserDomain implements Serializable {
    private Long id;
    private String name;
    private String firstName;
    private String lastName;
    private String mobileNumber;
    private String emailId;
    private String gender;
    private String city;
    private String password;
}