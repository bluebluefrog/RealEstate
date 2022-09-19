package com.g7.controller;


import com.g7.entity.Account;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RestController
public class BaseController {

    public Account getAccountFromSession(HttpServletRequest request){
        HttpSession session = request.getSession();

        return (Account)session.getAttribute("loginAccount");
    }
}
