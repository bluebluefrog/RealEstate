package com.g7.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "real_estate")
public class RealEstate {
    @Id
    private String id;

    @Column(name = "real_estate_type")
    private Integer realEstateType;

    @Column(name = "land_area")
    private String landArea;

    @Column(name = "real_estate_area")
    private String realEstateArea;

    private Integer bedrooms;

    private Integer bathrooms;

    private Integer garage;

    @Column(name = "street_address")
    private String streetAddress;

    private String suburb;

    @Column(name = "agent_id")
    private String agentId;

    @Column(name = "created_time")
    private Date createdTime;

    @Column(name = "updated_time")
    private Date updatedTime;

    /**
     * 0-no 1-yes
     */
    @Column(name = "on_auction")
    private Integer onAuction;

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
     * @return real_estate_type
     */
    public Integer getRealEstateType() {
        return realEstateType;
    }

    /**
     * @param realEstateType
     */
    public void setRealEstateType(Integer realEstateType) {
        this.realEstateType = realEstateType;
    }

    /**
     * @return land_area
     */
    public String getLandArea() {
        return landArea;
    }

    /**
     * @param landArea
     */
    public void setLandArea(String landArea) {
        this.landArea = landArea;
    }

    /**
     * @return real_estate_area
     */
    public String getRealEstateArea() {
        return realEstateArea;
    }

    /**
     * @param realEstateArea
     */
    public void setRealEstateArea(String realEstateArea) {
        this.realEstateArea = realEstateArea;
    }

    /**
     * @return bedrooms
     */
    public Integer getBedrooms() {
        return bedrooms;
    }

    /**
     * @param bedrooms
     */
    public void setBedrooms(Integer bedrooms) {
        this.bedrooms = bedrooms;
    }

    /**
     * @return bathrooms
     */
    public Integer getBathrooms() {
        return bathrooms;
    }

    /**
     * @param bathrooms
     */
    public void setBathrooms(Integer bathrooms) {
        this.bathrooms = bathrooms;
    }

    /**
     * @return garage
     */
    public Integer getGarage() {
        return garage;
    }

    /**
     * @param garage
     */
    public void setGarage(Integer garage) {
        this.garage = garage;
    }

    /**
     * @return street_address
     */
    public String getStreetAddress() {
        return streetAddress;
    }

    /**
     * @param streetAddress
     */
    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    /**
     * @return suburb
     */
    public String getSuburb() {
        return suburb;
    }

    /**
     * @param suburb
     */
    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    /**
     * @return agent_id
     */
    public String getAgentId() {
        return agentId;
    }

    /**
     * @param agentId
     */
    public void setAgentId(String agentId) {
        this.agentId = agentId;
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
     * 获取0-no 1-yes
     *
     * @return on_auction - 0-no 1-yes
     */
    public Integer getOnAuction() {
        return onAuction;
    }

    /**
     * 设置0-no 1-yes
     *
     * @param onAuction 0-no 1-yes
     */
    public void setOnAuction(Integer onAuction) {
        this.onAuction = onAuction;
    }
}