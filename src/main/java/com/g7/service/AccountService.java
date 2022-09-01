package com.g7.service;

import com.g7.entity.Account;

public interface AccountService {

    Account register(String username, String password);

    Account login(String username, String password);
}
