package com.g7.service;


import com.g7.common.PagedGridResult;

public interface PropertyService {

    PagedGridResult listAllProperty(Integer page, Integer pageSize);
}
