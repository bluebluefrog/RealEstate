package com.g7.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "auction_record")
public class AuctionRecord {
    @Id
    private String id;

    /**
     * 1lead 2out
     */
    private Integer status;

    @Column(name = "account_id")
    private String accountId;

    @Column(name = "auction_id")
    private String auctionId;

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
     * 获取1lead 2out
     *
     * @return status - 1lead 2out
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置1lead 2out
     *
     * @param status 1lead 2out
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * @return account_id
     */
    public String getAccountId() {
        return accountId;
    }

    /**
     * @param accountId
     */
    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    /**
     * @return auction_id
     */
    public String getAuctionId() {
        return auctionId;
    }

    /**
     * @param auctionId
     */
    public void setAuctionId(String auctionId) {
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