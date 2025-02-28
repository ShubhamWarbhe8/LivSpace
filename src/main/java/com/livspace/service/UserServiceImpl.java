package com.livspace.service;

import com.livspace.entity.UserEntity;
import com.livspace.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public List<UserEntity> getAllUser() {
        return userRepository.findAll();
    }

    @Override
    public String saveUser(UserEntity userEntity) {
        UserEntity userEntity1 = userRepository.save(userEntity);
        if (userEntity1.getName() != null)
            return "user saved successfully";
        else {
            return "something went wrong";
        }
    }

    @Override
    public UserEntity getUserByMobileNumberAndPassword(String name, String password) {
        UserEntity userEntity = userRepository.findByMobileNumberAndPassword(name, password);
        return userEntity;
    }
}