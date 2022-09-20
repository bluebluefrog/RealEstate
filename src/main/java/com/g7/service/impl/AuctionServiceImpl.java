package com.g7.service.impl;

import com.g7.common.exception.GraceException;
import com.g7.common.result.ResponseStatusEnum;
import com.g7.entity.Auction;
import com.g7.entity.AuctionRecord;
import com.g7.entity.RealEstate;
import com.g7.entity.bo.AuctionBO;
import com.g7.mapper.AccountMapper;
import com.g7.mapper.AuctionMapper;
import com.g7.mapper.AuctionRecordMapper;
import com.g7.service.AuctionService;
import com.g7.service.PropertyService;
import org.n3r.idworker.Sid;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;

@Service
public class AuctionServiceImpl implements AuctionService {

    @Autowired
    private AuctionMapper auctionMapper;

    @Autowired
    private AuctionRecordMapper auctionRecordMapper;

    @Autowired
    private AccountMapper accountMapper;

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private Sid sid;


    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public Auction createAuction(AuctionBO auctionBO,String sponsorId) {

        RealEstate realEstate = propertyService.searchRealEstate(auctionBO.getRealEstateId());
        if (realEstate == null) {
            GraceException.display(ResponseStatusEnum.PROPERTY_NO_EXIST);
        }

        Auction auction=new Auction();
        String auctionId = sid.nextShort();
        auction.setId(auctionId);
        BeanUtils.copyProperties(auctionBO, auction);
        auction.setHighestAuctionRecordId("0");
        auction.setAuctionSponsorId(sponsorId);

        auctionMapper.insert(auction);

        return auction;
    }

    @Override
    public Auction findAuctionById(String auctionId){

        Example example = new Example(Auction.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("id", auctionId);
        Auction auction = auctionMapper.selectOneByExample(example);

        return auction;
    }
    
    @Override
    public AuctionRecord findAuctionRecordById(String auctionRecordId){

        Example example = new Example(AuctionRecord.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("id", auctionRecordId);
        AuctionRecord auctionRecord = auctionRecordMapper.selectOneByExample(example);

        return auctionRecord;
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public AuctionRecord createAuctionRecord(String accountId, String auctionId, long bidPrice) {

        Auction auction = findAuctionById(auctionId);

        if (auction == null) {
            GraceException.display(ResponseStatusEnum.AUCTION_NO_EXIST);
        }

        if (!auction.getHighestAuctionRecordId().equals("0")) {
            AuctionRecord oldAuctionRecord = findAuctionRecordById(auction.getHighestAuctionRecordId());

            if (oldAuctionRecord.getBidPrice() >= bidPrice) {
                GraceException.display(ResponseStatusEnum.AUCTION_FAIL_BID_PRICE_LOW);
            }

            //update old record status
            oldAuctionRecord.setStatus(2);
            auctionRecordMapper.updateByPrimaryKey(oldAuctionRecord);
        }

        //create new auction
        AuctionRecord auctionRecord = new AuctionRecord();
        String auctionRecordId = sid.nextShort();
        auctionRecord.setId(auctionRecordId);
        auctionRecord.setAccountId(accountId);
        auctionRecord.setAuctionId(auctionId);
        auctionRecord.setStatus(1);
        auctionRecord.setBidPrice(bidPrice);
        auctionRecord.setBidTime(new Date());

        auctionRecordMapper.insert(auctionRecord);
        auctionRecord.setId(auctionRecordId);

        //update highest auction record id
        auction.setHighestAuctionRecordId(auctionRecordId);

        auctionMapper.updateByPrimaryKey(auction);

        return auctionRecord;
    }
}
