package com.g7.service;


import com.g7.common.PagedGridResult;
import com.g7.entity.RealEstate;
import com.g7.entity.bo.RealEstateBO;
import com.g7.entity.vo.RealEstateAuctionVO;
import com.g7.entity.vo.RealEstateVO;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface PropertyService {

    RealEstate searchRealEstate(String realEstateId);

    void updateProperty(RealEstate realEstate);

    PagedGridResult listAllProperty(Integer page, Integer pageSize, String keyWord, Integer onAuction, List<String> accountIds);

    RealEstateVO infoProperty(String realEstateId);

    RealEstateAuctionVO infoRealEstateAuction(String realEstateId);

    RealEstate createProperty(RealEstateBO realEstateBO, String accountId);

    void uploadPropertyImgs(List<String> imgPathList, String propertyId);

    void uploadPropertyImg(String imgPath, String propertyId);

    List<RealEstateVO> listAllNoAuctionProperty(String id);

    List<String> deleteProperty(String propertyId, String id);

    void removeImg(String path);
}
