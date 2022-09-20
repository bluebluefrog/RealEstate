package com.g7.entity.vo;

import com.g7.entity.AuctionRecord;
import com.g7.entity.RealEstate;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AuctionInfoVO {

    private String id;
    private Date auctionDate;
    private Date auctionDuration;
    private Long startingBid;
    private String highestAuctionRecordId;
    private String auctionTitle;
    private String auctionDetail;
    private String auctionAnnouncement;
    private String realEstateId;
    private String auctionSponsorId;
    private Long securityDeposit;
    private Long appraisedValue;
    private RealEstate realEstate;
    private List<AuctionRecord> auctionRecordList;
}
