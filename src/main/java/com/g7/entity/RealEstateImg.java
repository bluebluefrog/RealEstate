package com.g7.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "real_estate_img")
public class RealEstateImg {
    @Id
    private Integer id;

    @Column(name = "real_estate_id")
    private Integer realEstateId;

    @Column(name = "position_sort")
    private Integer positionSort;

    @Column(name = "is_main")
    private Integer isMain;

    @Column(name = "created_time")
    private Date createdTime;

    @Column(name = "updated_time")
    private Date updatedTime;

    private String url;

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
     * @return position_sort
     */
    public Integer getPositionSort() {
        return positionSort;
    }

    /**
     * @param positionSort
     */
    public void setPositionSort(Integer positionSort) {
        this.positionSort = positionSort;
    }

    /**
     * @return is_main
     */
    public Integer getIsMain() {
        return isMain;
    }

    /**
     * @param isMain
     */
    public void setIsMain(Integer isMain) {
        this.isMain = isMain;
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
     * @return url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url
     */
    public void setUrl(String url) {
        this.url = url;
    }
}