package com.g7.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import java.util.Date;

public class Auction {
    @Id
    private String id;

    @Column(name = "auction_date")
    private Date auctionDate;

    @Column(name = "auction_duration")
    private Date auctionDuration;

    @Column(name = "starting_bid")
    private Long startingBid;

    @Column(name = "highest_auction_record_id")
    private String highestAuctionRecordId;

    @Column(name = "auction_title")
    private String auctionTitle;

    @Column(name = "auction_detail")
    private String auctionDetail;

    @Column(name = "auction_announcement")
    private String auctionAnnouncement;

    @Column(name = "real_estate_id")
    private String realEstateId;

    @Column(name = "created_time")
    private Date createdTime;

    @Column(name = "updated_time")
    private Date updatedTime;

    @Column(name = "auction_sponsor_id")
    private String auctionSponsorId;

    @Column(name = "security_deposit")
    private Long securityDeposit;

    @Column(name = "appraised_value")
    private Long appraisedValue;

    private Long markup;

    /**
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return auction_date
     */
    public Date getAuctionDate() {
        return auctionDate;
    }

    /**
     * @param auctionDate
     */
    public void setAuctionDate(Date auctionDate) {
        this.auctionDate = auctionDate;
    }

    /**
     * @return auction_duration
     */
    public Date getAuctionDuration() {
        return auctionDuration;
    }

    /**
     * @param auctionDuration
     */
    public void setAuctionDuration(Date auctionDuration) {
        this.auctionDuration = auctionDuration;
    }

    /**
     * @return starting_bid
     */
    public Long getStartingBid() {
        return startingBid;
    }

    /**
     * @param startingBid
     */
    public void setStartingBid(Long startingBid) {
        this.startingBid = startingBid;
    }

    /**
     * @return highest_auction_record_id
     */
    public String getHighestAuctionRecordId() {
        return highestAuctionRecordId;
    }

    /**
     * @param highestAuctionRecordId
     */
    public void setHighestAuctionRecordId(String highestAuctionRecordId) {
        this.highestAuctionRecordId = highestAuctionRecordId;
    }

    /**
     * @return auction_title
     */
    public String getAuctionTitle() {
        return auctionTitle;
    }

    /**
     * @param auctionTitle
     */
    public void setAuctionTitle(String auctionTitle) {
        this.auctionTitle = auctionTitle;
    }

    /**
     * @return auction_detail
     */
    public String getAuctionDetail() {
        return auctionDetail;
    }

    /**
     * @param auctionDetail
     */
    public void setAuctionDetail(String auctionDetail) {
        this.auctionDetail = auctionDetail;
    }

    /**
     * @return auction_announcement
     */
    public String getAuctionAnnouncement() {
        return auctionAnnouncement;
    }

    /**
     * @param auctionAnnouncement
     */
    public void setAuctionAnnouncement(String auctionAnnouncement) {
        this.auctionAnnouncement = auctionAnnouncement;
    }

    /**
     * @return real_estate_id
     */
    public String getRealEstateId() {
        return realEstateId;
    }

    /**
     * @param realEstateId
     */
    public void setRealEstateId(String realEstateId) {
        this.realEstateId = realEstateId;
    }

    /**
     * @return created_time
     */
    public Date getCreatedTime() {
        return createdTime;
    }

    /**
     * @param createdTime
     */
    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    /**
     * @return updated_time
     */
    public Date getUpdatedTime() {
        return updatedTime;
    }

    /**
     * @param updatedTime
     */
    public void setUpdatedTime(Date updatedTime) {
        this.updatedTime = updatedTime;
    }

    /**
     * @return auction_sponsor_id
     */
    public String getAuctionSponsorId() {
        return auctionSponsorId;
    }

    /**
     * @param auctionSponsorId
     */
    public void setAuctionSponsorId(String auctionSponsorId) {
        this.auctionSponsorId = auctionSponsorId;
    }

    /**
     * @return security_deposit
     */
    public Long getSecurityDeposit() {
        return securityDeposit;
    }

    /**
     * @param securityDeposit
     */
    public void setSecurityDeposit(Long securityDeposit) {
        this.securityDeposit = securityDeposit;
    }

    /**
     * @return appraised_value
     */
    public Long getAppraisedValue() {
        return appraisedValue;
    }

    /**
     * @param appraisedValue
     */
    public void setAppraisedValue(Long appraisedValue) {
        this.appraisedValue = appraisedValue;
    }

    /**
     * @return markup
     */
    public Long getMarkup() {
        return markup;
    }

    /**
     * @param markup
     */
    public void setMarkup(Long markup) {
        this.markup = markup;
    }
}