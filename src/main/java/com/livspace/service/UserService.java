package com.livspace.service;

import com.livspace.entity.UserEntity;

import java.util.List;

public interface UserService {

    List<UserEntity> getAllUser();

    public String saveUser(UserEntity userEntity);

    public UserEntity getUserByMobileNumberAndPassword(String name, String password);

}
