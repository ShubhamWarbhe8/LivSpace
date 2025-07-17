package com.livspace.repository;

import com.livspace.entity.AdminEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public interface AdminRepository extends JpaRepository<AdminEntity, Serializable> {

    @Query(value = "select * from adminEntity where email-id = :email-id",nativeQuery = true)
    public AdminEntity findByEmailAdd( @Param("email-id") String email);

    AdminEntity findByMobileNumberAndPassword(String mobileNumber, String password);
}