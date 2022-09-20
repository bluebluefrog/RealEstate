package com.g7.controller;

import com.g7.common.result.GraceJSONResult;
import com.g7.entity.Account;
import com.g7.entity.Auction;
import com.g7.entity.AuctionRecord;
import com.g7.entity.bo.AuctionBO;
import com.g7.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@RestController
@RequestMapping("/auction")
public class AuctionController extends BaseController{

    @Autowired
    private AuctionService auctionService;

    @PostMapping("/createAuction")
    public GraceJSONResult createAuction(@Valid @RequestBody AuctionBO auctionBO, HttpServletRequest request){
        Account account = getAccountFromSession(request);

        Auction auction = auctionService.createAuction(auctionBO, account.getId());

        return GraceJSONResult.ok(auction);
    }

    @PostMapping("/createAuctionRecord")
    public GraceJSONResult createAuctionRecord(@RequestParam String auctionId,@RequestParam long bidPrice, HttpServletRequest request){
        Account account = getAccountFromSession(request);

        AuctionRecord auctionRecord = auctionService.createAuctionRecord(account.getId(), auctionId, bidPrice);

        return GraceJSONResult.ok(auctionRecord);
    }


    @GetMapping("/getAuctionInfo")
    public GraceJSONResult getAuctionInfo(HttpServletRequest request){
        Account account = getAccountFromSession(request);

        return GraceJSONResult.ok();
    }
}
