package com.g7.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import java.util.Date;

public class Account {
    @Id
    private String id;

    private String username;

    private String password;

    private String avatar;

    @Column(name = "Is_seller")
    private Integer isSeller;

    @Column(name = "person_info_id")
    private String personInfoId;

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
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return avatar
     */
    public String getAvatar() {
        return avatar;
    }

    /**
     * @param avatar
     */
    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    /**
     * @return Is_seller
     */
    public Integer getIsSeller() {
        return isSeller;
    }

    /**
     * @param isSeller
     */
    public void setIsSeller(Integer isSeller) {
        this.isSeller = isSeller;
    }

    /**
     * @return person_info_id
     */
    public String getPersonInfoId() {
        return personInfoId;
    }

    /**
     * @param personInfoId
     */
    public void setPersonInfoId(String personInfoId) {
        this.personInfoId = personInfoId;
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