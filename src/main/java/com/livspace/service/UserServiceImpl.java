package com.livspace.service;

import com.livspace.entity.UserEntity;
import com.livspace.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

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
        UserEntity savedUser = userRepository.save(userEntity);
        if (savedUser.getName() != null)
            return "User saved successfully";
        else
            return "Something went wrong";
    }

    @Override
    public UserEntity getUserByMobileNumberAndPassword(String mobileNumber, String password) {
        return userRepository.findByMobileNumberAndPassword(mobileNumber, password);
    }

    @Override
    public Optional<UserEntity> getUserById(Long id) {
        return Optional.ofNullable(userRepository.findById(id).orElse(null));
    }

    @Override
    public UserEntity deleteUser(Long id) {
        userRepository.deleteById(id);
        return null;
    }

    @Override
    public UserEntity login(String mobileNumber, String password) {
        return userRepository.findByMobileNumberAndPassword(mobileNumber, password);
    }
}
