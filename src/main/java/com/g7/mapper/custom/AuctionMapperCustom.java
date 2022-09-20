package com.g7.mapper.custom;


import com.g7.entity.vo.AuctionInfoVO;
import org.springframework.stereotype.Repository;

@Repository
public interface AuctionMapperCustom{

    AuctionInfoVO listAllAuctionByRealEstateId(String realEstateId);

    AuctionInfoVO listAllAuctionByAccountId(String accountId);
}
