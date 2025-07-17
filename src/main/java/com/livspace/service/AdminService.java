package com.livspace.service;

import com.livspace.entity.AdminEntity;

import java.util.List;

public interface AdminService {

    List<AdminEntity> getAllAdmin();

    public String saveAdmin(AdminEntity adminEntity);

    public AdminEntity getAdminByMobileNumberAndPassword(String name, String password);

}
