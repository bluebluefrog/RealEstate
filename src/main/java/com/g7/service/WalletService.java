package com.g7.service;

import com.g7.entity.Wallet;

import java.util.List;

public interface WalletService {

    Wallet addWallet(String bankAccount,String accountId);

    void topUp(Long fund, String bankAccount, String accountId);

    void deleteWallet(String bankAccount, String accountId);

    void charge(Long fund, String bankAccount, String accountId);

    List<Wallet> getWallet(String id);
}
