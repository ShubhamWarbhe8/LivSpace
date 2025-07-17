package com.livspace.controller;

import com.livspace.domain.AdminDomain;
import com.livspace.entity.*;
import com.livspace.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private UserService userService;

    @Autowired
    private AppointmentService appointmentService;

    @Autowired
    private BuyOverViewService buyOverViewService;

    @Autowired
    private RentOverViewService rentOverViewService;

    @GetMapping("/admin-login")
    public String showAdminLoginForm() {
        return "admin-welcome";
    }

    @GetMapping("/admin-sign-in")
    public String loadAdminSignInForm() {
        return "admin-sign-in";
    }

    @GetMapping("/admin-sign-up")
    public String loadAdminSignUpForm() {
        return "admin-sign-up";
    }

    @GetMapping("/admin-login/show-sell")
    public String showSellProperties(Model model) {
        List<Property> properties = propertyService.getAllProperties();
        model.addAttribute("sellProperties", properties);
        return "showSell";
    }

    @GetMapping("/admin-login/admin-appointments")
    public String showAdminAppointments(Model model) {
        List<AppointmentEntity> appointments = appointmentService.getAllAppointments();
        System.out.println(appointments);
        model.addAttribute("appointments", appointments);
        return "admin-appointments";
    }

    @PostMapping("/admin-register")
    public String register(@ModelAttribute AdminDomain adminDomain) {
        AdminEntity adminEntity = new AdminEntity();
        adminEntity.setFirstname(adminDomain.getFirstName());
        adminEntity.setLastname(adminDomain.getLastName());
        adminEntity.setEmailId(adminDomain.getEmailId());
        adminEntity.setGender(adminDomain.getGender());
        adminEntity.setMobileNumber(adminDomain.getMobileNumber());
        adminEntity.setPassword(adminDomain.getPassword());
        adminEntity.setCity(adminDomain.getCity());

        adminService.saveAdmin(adminEntity);
        return "admin-sign-in";
    }

    @PostMapping("/admin-login")
    public String login(@RequestParam String mobileNumber, @RequestParam String password, Model model) {
        AdminEntity adminEntity = adminService.getAdminByMobileNumberAndPassword(mobileNumber, password);

        if (adminEntity != null) {
            return "admin-welcome";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "admin-sign-in";
        }
    }

    @GetMapping("/admin/users")
    public String viewUsers(Model model) {
        model.addAttribute("users", userService.getAllUser());
        return "user-list";
    }

    @GetMapping("/admin/user/new")
    public String showCreateForm(Model model) {
        model.addAttribute("user", new UserEntity());
        return "user-form";
    }

    @PostMapping("/admin/user/save")
    public String saveUser(@ModelAttribute("user") UserEntity userEntity) {
        userService.saveUser(userEntity);
        return "redirect:/admin/users";
    }

    @GetMapping("/admin/user/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        UserEntity userEntity = userService.getUserById(id).orElse(null);
        model.addAttribute("user", userEntity);
        return "user-form";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
        return "redirect:/admin/users";
    }

    @GetMapping("/admin-login/admin-buyoverview")
    public String listBuyOverview(Model model) {
        model.addAttribute("buyList", buyOverViewService.getAll());
        return "buyoverview-list";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("buyOverview", new BuyOverview());
        return "buyoverview-form";
    }

    @PostMapping("/save")
    public String saveBuyOverview(@ModelAttribute("buyOverview") BuyOverview buyOverview) {
        buyOverViewService.save(buyOverview);
        return "redirect:/admin/buyoverview";
    }

    @GetMapping("/edit/{id}")
    public String editBuyOverview(@PathVariable Long id, Model model) {
        buyOverViewService.getById(id).ifPresent(overview -> model.addAttribute("buyOverview", overview));
        return "buyoverview-form";
    }

    @GetMapping("/delete/{id}")
    public String deleteBuyOverview(@PathVariable Long id) {
        buyOverViewService.delete(id);
        return "redirect:/admin/buyoverview";
    }

    @GetMapping("/admin-login/admin-rentoverview")
    public String listRentOverView(Model model) {
        model.addAttribute("rentList",rentOverViewService.getAllRent());
        return "rentoverview-list";
    }

    @GetMapping("/addr")
    public String showRentAddForm(Model model) {
        model.addAttribute("rentOverview", new RentOverView());
        return "rentoverview-form";
    }

    @PostMapping("/saver")
    public String saveRentOverview(@ModelAttribute("rentOverview") RentOverView rentOverview) {
        rentOverViewService.save(rentOverview);
        return "redirect:/admin/rentoverview";
    }

    @GetMapping("/edit/{rid}")
    public String editRentOverview(@PathVariable Long rid, Model model) {
        rentOverViewService.getByRentId(rid).ifPresent(rentoverview -> model.addAttribute("rentOverview", rentoverview));
        return "rentoverview-form";
    }

    @GetMapping("/delete/{rid}")
    public String deleteRentOverview(@PathVariable Long rid) {
        rentOverViewService.delete(rid);
        return "redirect:/admin/rentoverview";
    }
}

