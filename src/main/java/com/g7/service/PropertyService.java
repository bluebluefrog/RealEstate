package com.g7.service;


import com.g7.common.PagedGridResult;
import com.g7.entity.RealEstate;
import com.g7.entity.bo.RealEstateBO;
import com.g7.entity.vo.RealEstateAuctionVO;
import com.g7.entity.vo.RealEstateVO;

import java.util.List;

public interface PropertyService {

    RealEstate searchRealEstate(String realEstateId);

    void updateProperty(RealEstate realEstate);

    PagedGridResult listAllProperty(Integer page, Integer pageSize, String keyWord, Integer onAuction, List<String> accountIds);

    RealEstateVO infoProperty(String realEstateId);

    RealEstateAuctionVO infoRealEstateAuction(String realEstateId);

    RealEstate createProperty(RealEstateBO realEstateBO);

    void uploadPropertyImgs(List<String> imgPathList, String propertyId);
}
