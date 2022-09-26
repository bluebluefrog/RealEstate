package com.g7.service.impl;

import com.g7.common.PageUtils;
import com.g7.common.PagedGridResult;
import com.g7.entity.RealEstate;
import com.g7.entity.RealEstateImg;
import com.g7.entity.bo.RealEstateBO;
import com.g7.entity.vo.AuctionInfoVO;
import com.g7.entity.vo.RealEstateAuctionVO;
import com.g7.entity.vo.RealEstateVO;
import com.g7.mapper.RealEstateImgMapper;
import com.g7.mapper.RealEstateMapper;
import com.g7.mapper.custom.RealEstateMapperCustom;
import com.g7.service.AuctionService;
import com.g7.service.PropertyService;
import com.github.pagehelper.PageHelper;
import org.apache.commons.lang3.StringUtils;
import org.n3r.idworker.Sid;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PropertyServiceImpl implements PropertyService {

    @Autowired
    private RealEstateMapperCustom realEstateMapperCustom;

    @Autowired
    private RealEstateMapper realEstateMapper;

    @Autowired
    private AuctionService auctionService;

    @Autowired
    private RealEstateImgMapper realEstateImgMapper;

    @Autowired
    private Sid sid;

    @Override
    public RealEstate searchRealEstate(String realEstateId) {

        Example example = new Example(RealEstate.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("id", realEstateId);
        RealEstate realEstate = realEstateMapper.selectOneByExample(example);

        return realEstate;
    }

    @Override
    public void updateProperty(RealEstate realEstate){
        realEstateMapper.updateByPrimaryKeySelective(realEstate);
    }

    @Override
    public PagedGridResult listAllProperty(Integer page, Integer pageSize, String keyWord, Integer onAuction, List<String> realEstateIds) {

        Map<String, Object> map = new HashMap<>();

        if (!StringUtils.isNotBlank(keyWord)) {
            map.put("search", keyWord);
        }

        if (realEstateIds != null) {
            map.put("realEstateIds", realEstateIds);
        }

        if (onAuction != null) {
            map.put("onAuction", onAuction);
        }else{
            map.put("onAuction", "*");
        }

        PageHelper.startPage(page, pageSize);

        List<RealEstateVO> realEstateVOS = realEstateMapperCustom.listAllProperty(map);

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
        AuctionInfoVO auctionInfoVO = auctionService.infoAuction(realEstateId);

        RealEstateAuctionVO realEstateAuctionVO = new RealEstateAuctionVO();
        realEstateAuctionVO.setRealEstateVO(realEstateVO);
        realEstateAuctionVO.setAuctionInfoVO(auctionInfoVO);

        return realEstateAuctionVO;
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public RealEstate createProperty(RealEstateBO realEstateBO) {

        RealEstate realEstate = new RealEstate();
        BeanUtils.copyProperties(realEstateBO, realEstate);
        String realEstateId = sid.nextShort();
        realEstate.setId(realEstateId);
        realEstate.setAgentId("");
        realEstate.setOnAuction(0);

        realEstateMapper.insert(realEstate);

        return realEstate;
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public void uploadPropertyImgs(List<String> imgPathList, String propertyId) {

        RealEstateImg img;
        int position = 1;
        for (String imgPath:imgPathList) {
            img = new RealEstateImg();
            img.setId(sid.nextShort());
            img.setRealEstateId(propertyId);
            img.setPositionSort(position);
            if (position == 1) {
                img.setIsMain(1);
            } else {
                img.setIsMain(0);
            }
            img.setUrl(imgPath);

            realEstateImgMapper.insert(img);

            position++;
        }
    }

}
