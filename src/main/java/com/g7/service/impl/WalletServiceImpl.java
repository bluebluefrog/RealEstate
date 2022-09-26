package com.g7.service.impl;

import com.g7.common.exception.GraceException;
import com.g7.common.result.ResponseStatusEnum;
import com.g7.entity.Wallet;
import com.g7.mapper.WalletMapper;
import com.g7.service.WalletService;
import org.apache.commons.lang3.StringUtils;
import org.n3r.idworker.Sid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

@Service
public class WalletServiceImpl implements WalletService {

    @Autowired
    private WalletMapper walletMapper;

    @Autowired
    private Sid sid;

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public Wallet addWallet(String bankAccount, String accountId) {

        if (!StringUtils.isNotBlank(bankAccount)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        if (!StringUtils.isNotBlank(accountId)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Wallet wallet = new Wallet();
        wallet.setId(sid.nextShort());
        wallet.setAccountId(accountId);
        wallet.setBankAccount(bankAccount);
        wallet.setFunds(0l);

        walletMapper.insert(wallet);

        return wallet;
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public void topUp(Long fund, String bankAccount, String accountId) {


        if (fund == null || fund <= 0) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Example example = new Example(Wallet.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("bankAccount", bankAccount);
        criteria.andEqualTo("accountId", accountId);

        Wallet wallet = walletMapper.selectOneByExample(example);

        wallet.setFunds(wallet.getFunds() + fund);

        walletMapper.updateByPrimaryKey(wallet);

    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public void deleteWallet(String bankAccount, String accountId) {

        if (!StringUtils.isNotBlank(bankAccount)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        if (!StringUtils.isNotBlank(accountId)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Example example = new Example(Wallet.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("bankAccount", bankAccount);
        criteria.andEqualTo("accountId", accountId);

        walletMapper.deleteByExample(example);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public void charge(Long fund, String bankAccount, String accountId) {

        if (fund == null || fund <= 0) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Example example = new Example(Wallet.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("bankAccount", bankAccount);
        criteria.andEqualTo("accountId", accountId);

        Wallet wallet = walletMapper.selectOneByExample(example);

        Long charge = wallet.getFunds() - fund;

        if (charge < 0) {
            GraceException.display(ResponseStatusEnum.FUND_NOT_ENOUGH);
        }

        wallet.setFunds(charge);

        walletMapper.updateByPrimaryKey(wallet);
    }
}
