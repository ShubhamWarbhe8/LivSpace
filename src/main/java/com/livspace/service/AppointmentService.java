package com.livspace.service;

import com.livspace.entity.AppointmentEntity;

import java.util.List;

public interface AppointmentService {
    void bookAppointment(AppointmentEntity appointment);
    List<AppointmentEntity> getAllAppointments();
}
