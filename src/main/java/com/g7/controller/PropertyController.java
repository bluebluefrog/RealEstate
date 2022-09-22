package com.g7.controller;

import com.g7.common.result.GraceJSONResult;
import com.g7.common.PagedGridResult;
import com.g7.entity.RealEstate;
import com.g7.entity.bo.RealEstateBO;
import com.g7.entity.vo.RealEstateAuctionVO;
import com.g7.entity.vo.RealEstateVO;
import com.g7.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/property")
public class PropertyController extends BaseController{

    @Autowired
    private PropertyService propertyService;


    @GetMapping("/list")
    public GraceJSONResult listAllProperty(@RequestParam Integer page,
                                           @RequestParam Integer pageSize,
                                           @RequestParam String keyWord){

        if (page == null) {
            page = 1;
        }
        if (pageSize == null) {
            pageSize = 10;
        }

        PagedGridResult pagedGridResult = propertyService.listAllProperty(page, pageSize, keyWord, 1, null);

        return GraceJSONResult.ok(pagedGridResult);
    }

    @GetMapping("/info")
    public GraceJSONResult infoProperty(@RequestParam String realEstateId){

        RealEstateAuctionVO realEstateAuctionVO = propertyService.infoRealEstateAuction(realEstateId);

        return GraceJSONResult.ok(realEstateAuctionVO);
    }

    @PostMapping("/createProperty")
    public GraceJSONResult createProperty(@RequestBody RealEstateBO realEstateBO){

        RealEstate realEstate = propertyService.createProperty(realEstateBO);

        return GraceJSONResult.ok(realEstate);
    }

}
