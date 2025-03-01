package com.livspace.repository;

import com.livspace.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Serializable> {

    @Query(value = "select * from userEntity where email-id = :email-id",nativeQuery = true)
    public UserEntity findByEmailAdd( @Param("email-id") String email);

    UserEntity findByMobileNumberAndPassword(String mobileNumber, String password);
}