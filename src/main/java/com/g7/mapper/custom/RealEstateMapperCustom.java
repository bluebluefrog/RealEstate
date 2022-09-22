package com.g7.mapper.custom;

import com.g7.entity.vo.RealEstateVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface RealEstateMapperCustom {

    List<RealEstateVO> listAllProperty(@Param("paramMap")Map<String, Object> map);

    RealEstateVO infoProperty(String realEstateId);
}
