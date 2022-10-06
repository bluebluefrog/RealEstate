package com.g7.controller;

import com.g7.common.result.GraceJSONResult;
import com.g7.entity.Account;
import com.g7.entity.Wallet;
import com.g7.service.WalletService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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

    @GetMapping("/getWallet")
    public GraceJSONResult getWallet(HttpServletRequest request){
        Account account = getAccountFromSession(request);

        List<Wallet> wallets=walletService.getWallet(account.getId());

        return GraceJSONResult.ok(wallets);
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
