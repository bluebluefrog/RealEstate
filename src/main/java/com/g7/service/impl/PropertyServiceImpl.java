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
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class PropertyServiceImpl implements PropertyService {

    @Autowired
    private RealEstateMapperCustom realEstateMapperCustom;

    @Autowired
    private RealEstateMapper realEstateMapper;

    @Override
    public RealEstate searchRealEstate(String realEstateId) {

        Example example = new Example(RealEstate.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("id", realEstateId);
        RealEstate realEstate = realEstateMapper.selectOneByExample(example);

        return realEstate;
    }

    @Override
    public PagedGridResult listAllProperty(Integer page, Integer pageSize) {

        PageHelper.startPage(page, pageSize);

        List<RealEstateVO> realEstateVOS = realEstateMapperCustom.listAllProperty();

        return PageUtils.setterPagedGrid(realEstateVOS, page);
    }
}
