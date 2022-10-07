package com.g7.mapper.custom;


import com.g7.entity.vo.AuctionInfoVO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AuctionMapperCustom{

    AuctionInfoVO infoAuctionByRealEstateId(String realEstateId);

    List<AuctionInfoVO> listAllAuctionByAccountId(String accountId);
}
