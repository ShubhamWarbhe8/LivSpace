package com.livspace.controller;

import com.livspace.domain.UserDomain;
import com.livspace.entity.UserEntity;
import com.livspace.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/sign-in")
    public String loadSignInForm() {
        return "sign-in";
    }

    @GetMapping("/sign-up")
    public String loadSignUpForm() {
        return "sign-up";
    }
    @PostMapping("/register")
    public String register(@ModelAttribute UserDomain userDomain) {
        UserEntity userEntity = new UserEntity();
        userEntity.setFirstname(userDomain.getFirstName());
        userEntity.setLastname(userDomain.getLastName());
        userEntity.setEmailId(userDomain.getEmailId());
        userEntity.setGender(userDomain.getGender());
        userEntity.setMobileNumber(userDomain.getMobileNumber());
        userEntity.setPassword(userDomain.getPassword());
        userEntity.setCity(userDomain.getCity());
        userService.saveUser(userEntity);
        return "sign-in";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute UserDomain userDomain, Model model) {
        UserEntity userEntity = userService.getUserByMobileNumberAndPassword(userDomain.getMobileNumber(), userDomain.getPassword());
        if (userEntity != null) {
            return "xxx";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "sign-in";
        }
    }
}