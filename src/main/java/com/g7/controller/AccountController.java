package com.g7.controller;

import com.g7.common.JSONResult;
import com.g7.entity.Account;
import com.g7.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AccountController {

    @Autowired
    private AccountService accountService;

    @PostMapping("/register")
    public JSONResult register(@RequestParam String username, @RequestParam String password){

        if (username.length() < 6 || username == null || username.isEmpty()) {
            return JSONResult.errorMsg("username cant less then 6 letter!");
        }

        if (password.length() < 6 || password == null || password.isEmpty()) {

            return JSONResult.errorMsg("password cant less then 6 letter!");
        }

        Account account = accountService.register(username, password);

        return JSONResult.ok(account);
    }

    @GetMapping("/login")
    public JSONResult login(@RequestParam String username, @RequestParam String password){

        if (username.length() < 6 || username == null || username.isEmpty()) {
            return JSONResult.errorMsg("username cant less then 6 letter!");
        }

        if (password.length() < 6 || password == null || password.isEmpty()) {

            return JSONResult.errorMsg("password cant less then 6 letter!");
        }

        Account account = accountService.login(username, password);

        if (account==null) {

            return JSONResult.errorMsg("no such account or password wrong!");
        }

        return JSONResult.ok(account);
    }

}
