package com.g7.service;


import com.g7.common.PagedGridResult;
import com.g7.entity.RealEstate;

public interface PropertyService {

    RealEstate searchRealEstate(String realEstateId);

    PagedGridResult listAllProperty(Integer page, Integer pageSize);
}
