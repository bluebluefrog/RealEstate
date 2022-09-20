package com.g7.controller;

import com.g7.common.result.GraceJSONResult;
import com.g7.common.PagedGridResult;
import com.g7.entity.vo.RealEstateAuctionVO;
import com.g7.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/property")
public class PropertyController extends BaseController{

    @Autowired
    private PropertyService propertyService;


    @GetMapping("/list")
    public GraceJSONResult listAllProperty(@RequestParam Integer page,
                                             @RequestParam Integer pageSize){

        if (page == null) {
            page = 1;
        }
        if (pageSize == null) {
            pageSize = 10;
        }

        PagedGridResult pagedGridResult = propertyService.listAllProperty(page, pageSize);

        return GraceJSONResult.ok(pagedGridResult);
    }

    @GetMapping("/info")
    public GraceJSONResult infoProperty(@RequestParam String realEstateId){

        RealEstateAuctionVO realEstateAuctionVO = propertyService.infoRealEstateAuction(realEstateId);

        return GraceJSONResult.ok(realEstateAuctionVO);
    }

}
