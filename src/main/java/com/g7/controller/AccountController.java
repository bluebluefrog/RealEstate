package com.g7.controller;

import com.g7.common.result.GraceJSONResult;
import com.g7.entity.Account;
import com.g7.entity.PersonInfo;
import com.g7.entity.bo.UpdatePersonInfoBO;
import com.g7.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/account")
public class AccountController extends BaseController{

    @Autowired
    private AccountService accountService;

    @PostMapping("/register")
    public GraceJSONResult register(@RequestParam String username, @RequestParam String password){

        if (username.length() < 6 || username == null || username.isEmpty()) {
            return GraceJSONResult.errorMsg("username cant less then 6 letter!");
        }

        if (password.length() < 6 || password == null || password.isEmpty()) {

            return GraceJSONResult.errorMsg("password cant less then 6 letter!");
        }

        Account account = accountService.register(username, password);

        return GraceJSONResult.ok(account);
    }

    @GetMapping("/login")
    public GraceJSONResult login(@RequestParam String username, @RequestParam String password, HttpServletRequest request, HttpServletResponse response){

        if (username.length() < 6 || username == null || username.isEmpty()) {
            return GraceJSONResult.errorMsg("username cant less then 6 letter!");
        }

        if (password.length() < 6 || password == null || password.isEmpty()) {

            return GraceJSONResult.errorMsg("password cant less then 6 letter!");
        }

        Account account = accountService.login(username, password);

        if (account==null) {

            return GraceJSONResult.errorMsg("no such account or password wrong!");
        }

        //set account in session
        account.setPassword(null);
        account.setCreatedTime(null);
        account.setUpdatedTime(null);

        HttpSession session = request.getSession();
        session.setAttribute("loginAccount",account);

        return GraceJSONResult.ok(account);
    }

    @GetMapping("/personInfo")
    public GraceJSONResult personInfo(HttpServletRequest request){
        Account account = getAccountFromSession(request);
        PersonInfo personInfo = accountService.personInfo(account);

        return GraceJSONResult.ok(personInfo);
    }

    @PostMapping("/updatePersonInfo")
    public GraceJSONResult personInfo(UpdatePersonInfoBO updatePersonInfoBO,HttpServletRequest request){
        Account account = getAccountFromSession(request);
        PersonInfo personInfo=accountService.updatePersonInfo(updatePersonInfoBO,account.getPersonInfoId());

        return GraceJSONResult.ok(personInfo);
    }


    @GetMapping("/logout")
    public GraceJSONResult logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("loginAccount");

        return GraceJSONResult.ok();
    }

}
