package com.g7.service.impl;

import com.g7.common.exception.GraceException;
import com.g7.common.result.ResponseStatusEnum;
import com.g7.entity.Auction;
import com.g7.entity.AuctionRecord;
import com.g7.entity.RealEstate;
import com.g7.entity.bo.AuctionBO;
import com.g7.entity.vo.AuctionInfoVO;
import com.g7.mapper.AuctionMapper;
import com.g7.mapper.AuctionRecordMapper;
import com.g7.mapper.RealEstateMapper;
import com.g7.mapper.custom.AuctionMapperCustom;
import com.g7.service.AuctionService;
import com.g7.service.PropertyService;
import org.apache.commons.lang3.StringUtils;
import org.n3r.idworker.Sid;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.List;

@Service
public class AuctionServiceImpl implements AuctionService {

    @Autowired
    private AuctionMapper auctionMapper;

    @Autowired
    private RealEstateMapper realEstateMapper;

    @Autowired
    private AuctionRecordMapper auctionRecordMapper;

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private AuctionMapperCustom auctionMapperCustom;

    @Autowired
    private Sid sid;


    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public Auction createAuction(AuctionBO auctionBO,String sponsorId) {

        RealEstate realEstate = propertyService.searchRealEstate(auctionBO.getRealEstateId());
        if (realEstate == null) {
            GraceException.display(ResponseStatusEnum.PROPERTY_NO_EXIST);
        }

        Auction auctionByRealEstateId = findAuctionByRealEstateId(auctionBO.getRealEstateId());

        if (auctionByRealEstateId != null) {
            GraceException.display(ResponseStatusEnum.AUCTION_EXIST);
        }

        if (auctionBO.getAuctionDate().compareTo(auctionBO.getAuctionDuration()) >= 0) {
            GraceException.display(ResponseStatusEnum.AUCTION_DATE_WRONG);
        }

        if (auctionBO.getMarkup() > auctionBO.getStartingBid()) {
            GraceException.display(ResponseStatusEnum.AUCTION_BID_WRONG);
        }

        Auction auction=new Auction();
        String auctionId = sid.nextShort();
        auction.setId(auctionId);
        BeanUtils.copyProperties(auctionBO, auction);
        auction.setHighestAuctionRecordId("0");
        auction.setAuctionSponsorId(sponsorId);
        auction.setCreatedTime(new Date());
        auction.setUpdatedTime(new Date());

        auctionMapper.insert(auction);

        //change property on auction status
        RealEstate realEstateUpdate = new RealEstate();
        realEstateUpdate.setId(auctionBO.getRealEstateId());
        realEstateUpdate.setOnAuction(1);
        propertyService.updateProperty(realEstateUpdate);

        return auction;
    }

    @Override
    public Auction findAuctionById(String auctionId){

        if (!StringUtils.isNotBlank(auctionId)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Example example = new Example(Auction.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("id", auctionId);
        Auction auction = auctionMapper.selectOneByExample(example);

        return auction;
    }

    @Override
    public Auction findAuctionByRealEstateId(String realEstateId){

        if (!StringUtils.isNotBlank(realEstateId)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Example example = new Example(Auction.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("realEstateId", realEstateId);
        Auction auction = auctionMapper.selectOneByExample(example);

        return auction;
    }
    
    @Override
    public AuctionRecord findAuctionRecordById(String auctionRecordId){

        if (!StringUtils.isNotBlank(auctionRecordId)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Example example = new Example(AuctionRecord.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("id", auctionRecordId);
        AuctionRecord auctionRecord = auctionRecordMapper.selectOneByExample(example);

        return auctionRecord;
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public AuctionRecord createAuctionRecord(String accountId, String auctionId, long bidPrice) {

        if (accountId == null || auctionId == null || bidPrice <= 0) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Auction auction = findAuctionById(auctionId);

        if (auction == null) {
            GraceException.display(ResponseStatusEnum.AUCTION_NO_EXIST);
        }

        if (new Date().compareTo(auction.getAuctionDuration()) >= 0) {
            Example example = new Example(RealEstate.class);
            Example.Criteria criteria = example.createCriteria();
            criteria.andEqualTo("id", auction.getRealEstateId());
            RealEstate realEstate = realEstateMapper.selectOneByExample(example);
            if (realEstate.getOnAuction() != 0) {
                realEstate.setOnAuction(0);
                realEstateMapper.updateByPrimaryKeySelective(realEstate);
            }

            GraceException.display(ResponseStatusEnum.AUCTION_EXPIRE);
        }

        if (bidPrice < auction.getStartingBid()) {
            GraceException.display(ResponseStatusEnum.NEED_OVER_START_BID);
        }

        if (!auction.getHighestAuctionRecordId().equals("0")) {
            AuctionRecord oldAuctionRecord = findAuctionRecordById(auction.getHighestAuctionRecordId());

            if (oldAuctionRecord.getBidPrice() >= bidPrice) {
                GraceException.display(ResponseStatusEnum.AUCTION_FAIL_BID_PRICE_LOW);
            }

            if (bidPrice - oldAuctionRecord.getBidPrice() < auction.getMarkup()) {
                GraceException.display(ResponseStatusEnum.BID_MARKUP_NEED_REACH_THE_STANDARD);
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
        auctionRecord.setCreatedTime(new Date());
        auctionRecord.setUpdatedTime(new Date());

        auctionRecordMapper.insert(auctionRecord);
        auctionRecord.setId(auctionRecordId);

        //update highest auction record id
        auction.setHighestAuctionRecordId(auctionRecordId);

        auctionMapper.updateByPrimaryKey(auction);

        return auctionRecord;
    }

    @Override
    public AuctionInfoVO infoAuction(String realEstateId) {

        if (!StringUtils.isNotBlank(realEstateId)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        AuctionInfoVO auctionInfoVO = auctionMapperCustom.infoAuctionByRealEstateId(realEstateId);

        return auctionInfoVO;
    }

    @Override
    public List<AuctionInfoVO> infoAuctionByAccountId(String accountId) {

        List<AuctionInfoVO> auctionInfoVO = auctionMapperCustom.listAllAuctionByAccountId(accountId);

        return auctionInfoVO;
    }



    @Scheduled(cron ="0 0 1 * * ?")
    @Override
    public void checkAllAuctionFinish() {

        List<Auction> auctions = auctionMapper.selectAll();

        for (Auction auction : auctions
        ) {
            if (new Date().compareTo(auction.getAuctionDuration()) >= 0) {
                Example example = new Example(RealEstate.class);
                Example.Criteria criteria = example.createCriteria();
                criteria.andEqualTo("id", auction.getRealEstateId());
                RealEstate realEstate = realEstateMapper.selectOneByExample(example);
                if (realEstate.getOnAuction() != 0) {
                    realEstate.setOnAuction(0);
                    realEstateMapper.updateByPrimaryKeySelective(realEstate);
                }
            }
        }
    }
}
