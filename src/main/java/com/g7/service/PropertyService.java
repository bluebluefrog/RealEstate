package com.g7.service;


import com.g7.common.PagedGridResult;
import com.g7.entity.RealEstate;
import com.g7.entity.bo.RealEstateBO;
import com.g7.entity.vo.RealEstateAuctionVO;
import com.g7.entity.vo.RealEstateVO;

public interface PropertyService {

    RealEstate searchRealEstate(String realEstateId);

    void updateProperty(RealEstate realEstate);

    PagedGridResult listAllProperty(Integer page, Integer pageSize);

    RealEstateVO infoProperty(String realEstateId);

    RealEstateAuctionVO infoRealEstateAuction(String realEstateId);

    RealEstate createProperty(RealEstateBO realEstateBO);
}
