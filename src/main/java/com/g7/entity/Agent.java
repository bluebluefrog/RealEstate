package com.g7.entity;

import javax.persistence.*;
import java.util.Date;

public class Agent {
    @Id
    private Integer id;

    @Column(name = "agent_name")
    private String agentName;

    private Integer phone;

    private String company;

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
     * @return agent_name
     */
    public String getAgentName() {
        return agentName;
    }

    /**
     * @param agentName
     */
    public void setAgentName(String agentName) {
        this.agentName = agentName;
    }

    /**
     * @return phone
     */
    public Integer getPhone() {
        return phone;
    }

    /**
     * @param phone
     */
    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    /**
     * @return company
     */
    public String getCompany() {
        return company;
    }

    /**
     * @param company
     */
    public void setCompany(String company) {
        this.company = company;
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