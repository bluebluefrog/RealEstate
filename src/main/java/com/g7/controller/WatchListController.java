package com.g7.controller;

import com.g7.common.PagedGridResult;
import com.g7.common.result.GraceJSONResult;
import com.g7.entity.Account;
import com.g7.service.PropertyService;
import com.g7.service.WatchListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/watchList")
public class WatchListController extends BaseController{

    @Autowired
    private PropertyService propertyService;

    @Autowired
    private WatchListService watchListService;

    @GetMapping("/getList")
    public GraceJSONResult getWatchListByAccountId(HttpServletRequest request){
        Account account = getAccountFromSession(request);

        List<String> realEstateIdByAccountId = watchListService.getRealEstateIdByAccountId(account.getId());

        Integer page = realEstateIdByAccountId.size() / 10;

        PagedGridResult pagedGridResult = propertyService.listAllProperty(page, 10, null, null, realEstateIdByAccountId);

        return GraceJSONResult.ok(pagedGridResult);
    }

    @PostMapping("/addList")
    public GraceJSONResult addWatchListByAccountId(@RequestParam String realEstateId,HttpServletRequest request){
            Account account = getAccountFromSession(request);

            watchListService.addRealEstateIdByAccountId(realEstateId,account.getId());

            return GraceJSONResult.ok();
    }

    @PostMapping("/deleteList")
    public GraceJSONResult deleteWatchListByAccountId(@RequestParam String realEstateId, HttpServletRequest request){
        Account account = getAccountFromSession(request);

        watchListService.deleteRealEstateIdByAccountId(realEstateId,account.getId());

        return GraceJSONResult.ok();
    }
}
