package com.g7.service;

import com.g7.entity.Auction;
import com.g7.entity.AuctionRecord;
import com.g7.entity.bo.AuctionBO;
import com.g7.entity.vo.AuctionInfoVO;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public interface AuctionService {

    Auction createAuction(AuctionBO auctionBO,String sponsorId);

    Auction findAuctionById(String auctionId);

    AuctionRecord findAuctionRecordById(String auctionRecordId);

    AuctionRecord createAuctionRecord(String accountId, String auctionId, long bidPrice);

    AuctionInfoVO infoAuction(String realEstateId);
}
