package com.g7.service;

import com.g7.entity.Account;
import com.g7.entity.PersonInfo;
import com.g7.entity.bo.UpdatePersonInfoBO;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public interface AccountService {

    Account register(String username, String password);

    Account login(String username, String password);

    Account checkUsername(String username);

    PersonInfo personInfo(Account account);

    PersonInfo updatePersonInfo(UpdatePersonInfoBO updatePersonInfoBO, String personInfoId);

    void avatar(String imgPath, String accountId);
}
