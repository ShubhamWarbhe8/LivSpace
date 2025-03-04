package com.livspace.repository;

import com.livspace.entity.BuyOverview;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BuyOverviewRepository extends JpaRepository<BuyOverview,Long> {
    BuyOverview findByPropertyId(String propertyId);
    BuyOverview getByPropertyId(String propertyId);


}