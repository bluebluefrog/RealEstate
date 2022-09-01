package com.g7.entity;

import javax.persistence.*;
import java.util.Date;

public class Auction {
    @Id
    private Integer id;

    @Column(name = "acution_time")
    private Date acutionTime;

    @Column(name = "auction_date")
    private Date auctionDate;

    @Column(name = "auction_duration")
    private Date auctionDuration;

    @Column(name = "starting_bid")
    private Long startingBid;

    @Column(name = "highest_bid")
    private Long highestBid;

    @Column(name = "auction_title")
    private String auctionTitle;

    @Column(name = "auction_detail")
    private String auctionDetail;

    @Column(name = "auction_announcement")
    private String auctionAnnouncement;

    @Column(name = "real_estate_id")
    private Integer realEstateId;

    @Column(name = "created_time")
    private Date createdTime;

    @Column(name = "updated_time")
    private Date updatedTime;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return acution_time
     */
    public Date getAcutionTime() {
        return acutionTime;
    }

    /**
     * @param acutionTime
     */
    public void setAcutionTime(Date acutionTime) {
        this.acutionTime = acutionTime;
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
     * @return highest_bid
     */
    public Long getHighestBid() {
        return highestBid;
    }

    /**
     * @param highestBid
     */
    public void setHighestBid(Long highestBid) {
        this.highestBid = highestBid;
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
    public Integer getRealEstateId() {
        return realEstateId;
    }

    /**
     * @param realEstateId
     */
    public void setRealEstateId(Integer realEstateId) {
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
}