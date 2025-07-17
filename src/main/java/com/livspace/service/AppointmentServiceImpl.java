package com.livspace.service;

import com.livspace.entity.AppointmentEntity;
import com.livspace.repository.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppointmentServiceImpl implements AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;


    @Override
    public void bookAppointment(AppointmentEntity appointmentEntity) {
        appointmentRepository.save(appointmentEntity);
    }

    @Override
    public List<AppointmentEntity> getAllAppointments() {
        return appointmentRepository.findAll();
    }
}
