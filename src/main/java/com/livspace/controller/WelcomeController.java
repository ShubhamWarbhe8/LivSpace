package com.livspace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomeController {

    @GetMapping("/welcome")
    public String loadWelcomeForm() {
        return "welcome";
    }

    @GetMapping("/about-us")
    public String loadAboutUsForm() {
        return "about-us";
    }

    @GetMapping("/contact-us")
    public String loadContactUsForm() {
        return "contact-us";
    }
}
