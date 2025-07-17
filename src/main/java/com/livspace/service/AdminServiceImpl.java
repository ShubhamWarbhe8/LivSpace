package com.livspace.service;

import com.livspace.entity.AdminEntity;
import com.livspace.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminRepository adminRepository;

    @Override
    public List<AdminEntity> getAllAdmin() {
        return adminRepository.findAll();
    }

    @Override
    public String saveAdmin(AdminEntity adminEntity) {
        AdminEntity adminEntity1 = adminRepository.save(adminEntity);
        if (adminEntity1.getName() != null)
            return "user saved successfully";
        else {
            return "something went wrong";
        }
    }

    @Override
    public AdminEntity getAdminByMobileNumberAndPassword(String name, String password) {
        AdminEntity adminEntity = adminRepository.findByMobileNumberAndPassword(name, password);
        return adminEntity;
    }
}