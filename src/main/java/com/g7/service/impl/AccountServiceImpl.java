package com.g7.service.impl;

import com.g7.common.MD5Utils;
import com.g7.entity.Account;
import com.g7.entity.PersonInfo;
import com.g7.entity.enums.Sex;
import com.g7.entity.enums.YesOrNo;
import com.g7.mapper.AccountMapper;
import com.g7.mapper.PersonInfoMapper;
import com.g7.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountMapper accountMapper;

    @Autowired
    private PersonInfoMapper personInfoMapper;

    private static final String DEFAULT_AVATAR="http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg";

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public Account register(String username, String password) {

        //1create person info
        PersonInfo personInfo =new PersonInfo();
        personInfo.setAddress("unknow");
        personInfo.setAge(99);
        personInfo.setBirthday(new Date());
        personInfo.setEmail("unknow");
        personInfo.setFirstName("unknow");
        personInfo.setLastName("unknow");
        personInfo.setPhone(0);
        personInfo.setSex(Sex.secret.type);
        personInfo.setOtherInfo("unknow");
        personInfo.setCreatedTime(new Date());
        personInfo.setUpdateTime(new Date());

        int personInfoKey = personInfoMapper.insertUseGeneratedKeys(personInfo);



        //2create account
        Account account=new Account();
        account.setUsername(username);

        try {
            account.setPassword(MD5Utils.getMD5Str(password));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        account.setAvatar(DEFAULT_AVATAR);
        account.setIsSeller(YesOrNo.NO.type);
        account.setPersonInfoId(personInfoKey);
        account.setCreatedTime(new Date());
        account.setUpdatedTime(new Date());

        int accountKey = accountMapper.insertUseGeneratedKeys(account);

        //before return to frountend set id and no password shown
        account.setId(accountKey);
        account.setPassword("null");

        return account;
    }

    @Override
    public Account login(String username, String password) {
        //select *
        //from account
        //where username = @username
        //and password = @password

        //example
        Example example = new Example(Account.class);
        //cretiria
        Example.Criteria criteria = example.createCriteria();
        //give cretiria statement
        criteria.andEqualTo("username", username);
        try {
            criteria.andEqualTo("password", MD5Utils.getMD5Str(password));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        //mapper to run
        Account account = accountMapper.selectOneByExample(example);

        return account;
    }
}
