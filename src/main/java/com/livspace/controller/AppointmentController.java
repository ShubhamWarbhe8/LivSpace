package com.livspace.controller;

import com.livspace.entity.AppointmentEntity;
import com.livspace.service.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@Controller
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;

    @GetMapping("/book-appointment")
    public String showBookAppointmentForm(Model model) {
        return "book-appointment"; // JSP page name
    }

    @GetMapping("/appointment/book-appointment/{userId}")
    public String showBookAppointmentForm(@PathVariable Long userId, Model model) {
        model.addAttribute("userId", userId);
        return "book-appointment";
    }
    @PostMapping("/submit-appointment")
    public String submitAppointment(@ModelAttribute("appointment") AppointmentEntity appointmentEntity) {
        AppointmentEntity appointmentEntity1 = new AppointmentEntity();
        appointmentEntity1.setFullName(appointmentEntity.getFullName());
        appointmentEntity1.setEmail(appointmentEntity.getEmail());
        appointmentEntity1.setMobileNumber(appointmentEntity.getMobileNumber());
        appointmentEntity1.setAppointmentDate(appointmentEntity.getAppointmentDate());

        appointmentService.bookAppointment(appointmentEntity1);
        return "appointment-success";
    }

//    @PostMapping("/appointment/save")
//    public String saveAppointment(@RequestParam Long userId,
//                                  @RequestParam String fullName,
//                                  @RequestParam String date,
//                                  @RequestParam String email,
//                                  @RequestParam String mobileNumber,
//                                  Model model) {
//        try {
//            AppointmentEntity appointment = new AppointmentEntity();
//            appointment.setUserId(userId);
//            appointment.setFullName(fullName);
//            appointment.setEmail(email);
//            appointment.setMobileNumber(mobileNumber);
//            appointment.setAppointmentDate(LocalDate.parse(date));
//
//            appointmentService.bookAppointment(appointment);
//
//            System.out.println("Appointmetn booked...");
//
//            model.addAttribute("message", "Appointment booked successfully!");
//        } catch (Exception e) {
//            model.addAttribute("message", "Failed to book appointment: " + e.getMessage());
//            e.printStackTrace(); // log error
//            System.out.println("Appointmetn booked errorr...");
//
//
//        }
//
//        return "appointment-success";
//    }
@PostMapping("/appointment/save")
public String saveAppointment(@ModelAttribute AppointmentEntity appointment, Model model) {
    try {
        appointmentService.bookAppointment(appointment);
        System.out.println("Bokkded...");
        model.addAttribute("message", "Appointment booked successfully!");
    } catch (Exception e) {
        model.addAttribute("message", "Failed to book appointment: " + e.getMessage());
        e.printStackTrace();
        System.out.println("Bokkded errorr...");
    }
    return "appointment-success";
}


//    @GetMapping("/admin-login/admin-appointments")
//    public String viewAllAppointments(Model model) {
 //       List<AppointmentEntity> appointments = appointmentService.getAllAppointments();
//        System.out.println(appointments);
//        model.addAttribute("appointments", appointments);
//        return "admin-appointments";
//    }
}