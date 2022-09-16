package com.g7.service.impl;

import com.g7.common.PageUtils;
import com.g7.common.PagedGridResult;
import com.g7.entity.RealEstate;
import com.g7.entity.vo.RealEstateVO;
import com.g7.mapper.RealEstateMapper;
import com.g7.mapper.custom.RealEstateMapperCustom;
import com.g7.service.PropertyService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PropertyServiceImpl implements PropertyService {

    @Autowired
    private RealEstateMapperCustom realEstateMapperCustom;

    @Override
    public PagedGridResult listAllProperty(Integer page, Integer pageSize) {

        PageHelper.startPage(page, pageSize);

        List<RealEstateVO> realEstateVOS = realEstateMapperCustom.listAllProperty();

        return PageUtils.setterPagedGrid(realEstateVOS, page);
    }
}
