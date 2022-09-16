package com.g7.entity.vo;

import com.g7.entity.RealEstateImg;
import java.util.Date;
import java.util.List;

public class RealEstateVO {
    private Integer id;
    private Integer realEstateType;
    private String landArea;
    private String realEstateArea;
    private Integer bedrooms;
    private Integer bathrooms;
    private Integer garage;
    private String streetAddress;
    private String suburb;
    private Integer agentId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRealEstateType() {
        return realEstateType;
    }

    public void setRealEstateType(Integer realEstateType) {
        this.realEstateType = realEstateType;
    }

    public String getLandArea() {
        return landArea;
    }

    public void setLandArea(String landArea) {
        this.landArea = landArea;
    }

    public String getRealEstateArea() {
        return realEstateArea;
    }

    public void setRealEstateArea(String realEstateArea) {
        this.realEstateArea = realEstateArea;
    }

    public Integer getBedrooms() {
        return bedrooms;
    }

    public void setBedrooms(Integer bedrooms) {
        this.bedrooms = bedrooms;
    }

    public Integer getBathrooms() {
        return bathrooms;
    }

    public void setBathrooms(Integer bathrooms) {
        this.bathrooms = bathrooms;
    }

    public Integer getGarage() {
        return garage;
    }

    public void setGarage(Integer garage) {
        this.garage = garage;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    public Integer getAgentId() {
        return agentId;
    }

    public void setAgentId(Integer agentId) {
        this.agentId = agentId;
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public Date getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Date updatedTime) {
        this.updatedTime = updatedTime;
    }

    public List<RealEstateImg> getRealEstateImgs() {
        return realEstateImgs;
    }

    public void setRealEstateImgs(List<RealEstateImg> realEstateImgs) {
        this.realEstateImgs = realEstateImgs;
    }

    private Date createdTime;
    private Date updatedTime;
    private List<RealEstateImg> realEstateImgs;
}
