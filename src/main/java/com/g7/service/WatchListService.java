package com.g7.service;

import java.util.List;

public interface WatchListService {

    List<String> getRealEstateIdByAccountId(String accountId);

    void addRealEstateIdByAccountId(String realEstateId, String accountId);

    void deleteRealEstateIdByAccountId(String realEstateId, String accountId);
}
