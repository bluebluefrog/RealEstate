package com.g7.entity;

import javax.persistence.*;
import java.util.Date;

@Table(name = "auction_record")
public class AuctionRecord {
    @Id
    private Integer id;

    private String username;

    @Column(name = "account_id")
    private Integer accountId;

    @Column(name = "auction_id")
    private Integer auctionId;

    @Column(name = "bid_price")
    private Long bidPrice;

    @Column(name = "bid_time")
    private Date bidTime;

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
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return account_id
     */
    public Integer getAccountId() {
        return accountId;
    }

    /**
     * @param accountId
     */
    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }

    /**
     * @return auction_id
     */
    public Integer getAuctionId() {
        return auctionId;
    }

    /**
     * @param auctionId
     */
    public void setAuctionId(Integer auctionId) {
        this.auctionId = auctionId;
    }

    /**
     * @return bid_price
     */
    public Long getBidPrice() {
        return bidPrice;
    }

    /**
     * @param bidPrice
     */
    public void setBidPrice(Long bidPrice) {
        this.bidPrice = bidPrice;
    }

    /**
     * @return bid_time
     */
    public Date getBidTime() {
        return bidTime;
    }

    /**
     * @param bidTime
     */
    public void setBidTime(Date bidTime) {
        this.bidTime = bidTime;
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