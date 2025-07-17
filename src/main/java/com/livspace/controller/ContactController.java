package com.livspace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {

    @PostMapping("/contact")
    public String handleContactForm(
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("message") String message,
            Model model) {

        // ✅ Log received data (optional for now)
        System.out.println("Contact Form Submission:");
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Message: " + message);

        // ✅ Pass name to thankyou.jsp
        model.addAttribute("name", name);

        // ✅ Redirect to a confirmation page (thankyou.jsp)
        return "thankyou"; // Make sure thankyou.jsp is in /WEB-INF/views/
    }
}
