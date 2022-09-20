package com.g7.entity.vo;

import com.g7.entity.RealEstateImg;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class RealEstateVO {
    private Integer id;
    private Integer realEstateType;
    private String landArea;
    private String realEstateArea;
    private Integer bedrooms;
    private Integer bathrooms;
    private Integer garage;
    private String streetAddress;
    private String suburb;
    private Integer agentId;
    private Integer onAuction;
    private List<RealEstateImg> realEstateImgs;
}
