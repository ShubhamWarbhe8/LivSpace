package com.livspace.service;

import com.livspace.domain.BuyPropertyDomain;
import com.livspace.entity.BuyPropertyEntity;
import com.livspace.repository.BuyPropertyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BuyPropertyService {

    @Autowired
    private BuyPropertyRepository buyPropertyRepository;

    public List<BuyPropertyDomain> getNameAndLandMarkAndBHKTypeAndPropertyTypeAndPropertyStatus
            (String name, String landMark, String bHKType, String propertyType, String propertyStatus) {
        List<BuyPropertyEntity> typeAndPropertyStatus = buyPropertyRepository.
                findByNameAndLandMarkAndBhkAndPropertyTypeAndPropertyStatus
                        (name, landMark, bHKType, propertyType, propertyStatus);
        List<BuyPropertyDomain> buyPropertyDomainList = new ArrayList<>();

        typeAndPropertyStatus.forEach(s -> {
                    BuyPropertyDomain buyPropertyDomain = new BuyPropertyDomain();
                    buyPropertyDomain.setName(name);
                    buyPropertyDomain.setLandMark(landMark);
                    buyPropertyDomain.setBHK(bHKType);
                    buyPropertyDomain.setPropertyType(propertyType);
                    buyPropertyDomain.setPropertyStatus(propertyStatus);
                    buyPropertyDomainList.add(buyPropertyDomain);
                }
        );
        return buyPropertyDomainList;
    }
}
