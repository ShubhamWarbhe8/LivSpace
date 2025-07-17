package com.livspace.service;

import com.livspace.entity.UserEntity;

import java.util.List;
import java.util.Optional;

public interface UserService {

    List<UserEntity> getAllUser();

    public String saveUser(UserEntity userEntity);

    public UserEntity getUserByMobileNumberAndPassword(String name, String password);

    public Optional<UserEntity> getUserById(Long id);

    public UserEntity deleteUser(Long id);

    public UserEntity login(String mobileNumber, String password);

}
