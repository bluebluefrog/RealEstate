package com.g7.entity;

import javax.persistence.*;
import java.util.Date;

@Table(name = "watch_list")
public class WatchList {
    @Id
    private Integer id;

    @Column(name = "account_id")
    private Integer accountId;

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