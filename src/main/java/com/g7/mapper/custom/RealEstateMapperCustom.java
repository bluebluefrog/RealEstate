package com.g7.mapper.custom;

import com.g7.entity.vo.RealEstateVO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RealEstateMapperCustom {

    List<RealEstateVO> listAllProperty();

    RealEstateVO infoProperty(String realEstateId);
}
