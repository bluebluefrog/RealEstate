package com.g7.service.impl;

import com.g7.common.MD5Utils;
import com.g7.common.exception.GraceException;
import com.g7.common.result.ResponseStatusEnum;
import com.g7.entity.Account;
import com.g7.entity.PersonInfo;
import com.g7.entity.bo.UpdatePersonInfoBO;
import com.g7.entity.enums.Sex;
import com.g7.entity.enums.YesOrNo;
import com.g7.mapper.AccountMapper;
import com.g7.mapper.PersonInfoMapper;
import com.g7.service.AccountService;
import org.apache.commons.lang3.StringUtils;
import org.n3r.idworker.Sid;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountMapper accountMapper;

    @Autowired
    private PersonInfoMapper personInfoMapper;

    @Autowired
    private Sid sid;

    private static final String DEFAULT_AVATAR="http://img.lemeitu.com/m00/85/e4/dc3eb8dfc638bba269e1d252a9f0f6a7__w.jpg";

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public Account register(String username, String password) {

        if (!StringUtils.isNotBlank(username)||!StringUtils.isNotBlank(password)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Account accountExist = checkUsername(username);
        if (accountExist != null) {
            GraceException.display(ResponseStatusEnum.USERNAME_EXIST);
        }

        //1create person info
        PersonInfo personInfo =new PersonInfo();
        String personInfoId = sid.nextShort();
        personInfo.setId(personInfoId);
        personInfo.setAddress("unknow");
        personInfo.setAge(99);
        personInfo.setBirthday(new Date());
        personInfo.setEmail("unknow");
        personInfo.setFirstName("unknow");
        personInfo.setLastName("unknow");
        personInfo.setPhone(0);
        personInfo.setSex(Sex.secret.type);
        personInfo.setOtherInfo("unknow");

        personInfoMapper.insert(personInfo);



        //2create account
        Account account=new Account();
        String accountId = sid.nextShort();
        account.setId(accountId);
        account.setUsername(username);

        try {
            account.setPassword(MD5Utils.getMD5Str(password));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        account.setAvatar(DEFAULT_AVATAR);
        account.setIsSeller(YesOrNo.NO.type);
        account.setPersonInfoId(personInfoId);

        accountMapper.insert(account);

        return account;
    }

    @Override
    public Account login(String username, String password) {

        if (!StringUtils.isNotBlank(username)||!StringUtils.isNotBlank(password)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

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

    @Override
    public Account checkUsername(String username) {
        //example
        Example example = new Example(Account.class);
        //cretiria
        Example.Criteria criteria = example.createCriteria();
        //give cretiria statement
        criteria.andEqualTo("username", username);
        //mapper to run
        Account account = accountMapper.selectOneByExample(example);

        return account;
    }

    @Override
    public PersonInfo personInfo(Account account) {

        Example personInfoExample = new Example(PersonInfo.class);
        Example.Criteria personInfoCriteria = personInfoExample.createCriteria();
        personInfoCriteria.andEqualTo("id", account.getPersonInfoId());
        PersonInfo personInfo = personInfoMapper.selectOneByExample(personInfoExample);

        return personInfo;
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public PersonInfo updatePersonInfo(UpdatePersonInfoBO updatePersonInfoBO, String personInfoId) {

        PersonInfo personInfo = new PersonInfo();
        BeanUtils.copyProperties(updatePersonInfoBO, personInfo);
        personInfo.setId(personInfoId);

        System.out.println(personInfo.getOtherInfo());
        System.out.println(personInfo.getId());
        System.out.println(personInfo.getAddress());
        System.out.println(personInfo.getSex());
        System.out.println(personInfo.getEmail());
        System.out.println(personInfo.getAge());


        personInfoMapper.updateByPrimaryKeySelective(personInfo);

        return personInfo;
    }
}
