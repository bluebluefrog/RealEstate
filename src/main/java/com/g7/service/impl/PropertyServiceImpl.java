package com.g7.service.impl;

import com.g7.common.PageUtils;
import com.g7.common.PagedGridResult;
import com.g7.entity.RealEstate;
import com.g7.entity.vo.AuctionInfoVO;
import com.g7.entity.vo.RealEstateAuctionVO;
import com.g7.entity.vo.RealEstateVO;
import com.g7.mapper.RealEstateMapper;
import com.g7.mapper.custom.RealEstateMapperCustom;
import com.g7.service.AuctionService;
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

    @Autowired
    private AuctionService auctionService;

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

    @Override
    public RealEstateVO infoProperty(String realEstateId) {

        RealEstateVO realEstateVO = realEstateMapperCustom.infoProperty(realEstateId);

        return realEstateVO;
    }


    @Override
    public RealEstateAuctionVO infoRealEstateAuction(String realEstateId) {

        RealEstateVO realEstateVO = infoProperty(realEstateId);
        AuctionInfoVO auctionInfoVO =auctionService.infoAuction(realEstateId);

        RealEstateAuctionVO realEstateAuctionVO = new RealEstateAuctionVO();
        realEstateAuctionVO.setRealEstateVO(realEstateVO);
        realEstateAuctionVO.setRealEstateVO(realEstateVO);

        return realEstateAuctionVO;
    }
}
