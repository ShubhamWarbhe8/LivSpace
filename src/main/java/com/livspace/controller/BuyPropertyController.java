package com.livspace.controller;

import com.livspace.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class BuyPropertyController {

    @Autowired
    private PropertyService propertyService;
}