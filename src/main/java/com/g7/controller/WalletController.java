package com.g7.controller;

import com.g7.common.result.GraceJSONResult;
import com.g7.entity.Account;
import com.g7.service.WalletService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/wallet")
public class WalletController extends BaseController{


    @Autowired
    private WalletService walletService;

    @PostMapping("/addWallet")
    public GraceJSONResult addWallet(@RequestParam String bankAccount, HttpServletRequest request){
        Account account = getAccountFromSession(request);

        walletService.addWallet(bankAccount,account.getId());
        return GraceJSONResult.ok();
    }

    @PostMapping("/topUpWallet")
    public GraceJSONResult topUp(@RequestParam String bankAccount,@RequestParam Long fund ,HttpServletRequest request){
        Account account = getAccountFromSession(request);

        walletService.topUp(fund,bankAccount,account.getId());
        return GraceJSONResult.ok();
    }

    @PostMapping("/chargeWallet")
    public GraceJSONResult charge(@RequestParam String bankAccount,@RequestParam Long fund ,HttpServletRequest request){
        Account account = getAccountFromSession(request);

        walletService.charge(fund,bankAccount,account.getId());
        return GraceJSONResult.ok();
    }

    @PostMapping("/deleteWallet")
    public GraceJSONResult deleteWallet(@RequestParam String bankAccount, HttpServletRequest request){
        Account account = getAccountFromSession(request);

        walletService.deleteWallet(bankAccount,account.getId());
        return GraceJSONResult.ok();
    }
}
