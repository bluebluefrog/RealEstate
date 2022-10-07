package com.g7.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class RealEstateAuctionVO {

    private RealEstateVO realEstateVO;

    private AuctionInfoVO auctionInfoVO;
}
