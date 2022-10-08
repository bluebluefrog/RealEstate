package com.g7.controller;

import com.g7.common.result.GraceJSONResult;
import com.g7.common.PagedGridResult;
import com.g7.entity.Account;
import com.g7.entity.RealEstate;
import com.g7.entity.bo.RealEstateBO;
import com.g7.entity.vo.RealEstateAuctionVO;
import com.g7.entity.vo.RealEstateVO;
import com.g7.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
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

        if (page == null || page == 0) {
            page = 1;
        }
        if (pageSize == null || pageSize == 0) {
            pageSize = 10;
        }

        PagedGridResult pagedGridResult = propertyService.listAllProperty(page, pageSize, keyWord, 1, null);

        return GraceJSONResult.ok(pagedGridResult);
    }

    @GetMapping("/listNoAuction")
    public GraceJSONResult listAllNoAuctionProperty(HttpServletRequest request){

        Account account = getAccountFromSession(request);

        List<RealEstateVO> realEstateVOList= propertyService.listAllNoAuctionProperty(account.getId());

        return GraceJSONResult.ok(realEstateVOList);
    }

    @GetMapping("/info")
    public GraceJSONResult infoProperty(@RequestParam String realEstateId){

        RealEstateAuctionVO realEstateAuctionVO = propertyService.infoRealEstateAuction(realEstateId);

        return GraceJSONResult.ok(realEstateAuctionVO);
    }

    @PostMapping("/createProperty")
    public GraceJSONResult createProperty(@RequestBody RealEstateBO realEstateBO,HttpServletRequest request){
        Account account = getAccountFromSession(request);

        RealEstate realEstate = propertyService.createProperty(realEstateBO,account.getId());

        return GraceJSONResult.ok(realEstate);
    }


    @PostMapping("/deleteProperty")
    public GraceJSONResult deleteProperty(@RequestParam String propertyId,HttpServletRequest request){
        Account account = getAccountFromSession(request);

        List<String> imgPaths = propertyService.deleteProperty(propertyId, account.getId());
        if (imgPaths.size() > 0) {
            deleteImages(imgPaths);
        }

        return GraceJSONResult.ok();
    }

    @PostMapping("/removeImg")
    public GraceJSONResult removeImg(@RequestParam String path){
        propertyService.removeImg(path);
        deleteImage(path);
        return GraceJSONResult.ok(path);
    }

    @PostMapping("/uploadPropertyPhoto")
    public GraceJSONResult uploadPropertyPhoto(@RequestParam(value = "files")MultipartFile multipartFile, @RequestParam String propertyId) {

        System.out.println(multipartFile.getOriginalFilename());


        String imgPath = uploadImage(multipartFile);
        propertyService.uploadPropertyImg(imgPath, propertyId);

//        List<String> imgPathList = uploadImage(multipartFiles);
//        propertyService.uploadPropertyImgs(imgPathList, propertyId);

        return GraceJSONResult.ok(imgPath);
    }

}
