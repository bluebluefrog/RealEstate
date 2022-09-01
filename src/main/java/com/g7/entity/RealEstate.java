package com.g7.entity;

import javax.persistence.*;
import java.util.Date;

@Table(name = "real_estate")
public class RealEstate {
    @Id
    private Integer id;

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
    private Integer agentId;

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
    public Integer getAgentId() {
        return agentId;
    }

    /**
     * @param agentId
     */
    public void setAgentId(Integer agentId) {
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
}