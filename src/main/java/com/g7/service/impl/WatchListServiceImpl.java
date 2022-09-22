package com.g7.service.impl;

import com.g7.common.exception.GraceException;
import com.g7.common.result.ResponseStatusEnum;
import com.g7.entity.RealEstate;
import com.g7.entity.WatchList;
import com.g7.mapper.WatchListMapper;
import com.g7.service.WatchListService;
import org.apache.commons.lang3.StringUtils;
import org.n3r.idworker.Sid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

@Service
public class WatchListServiceImpl implements WatchListService {

    @Autowired
    private WatchListMapper watchListMapper;

    @Autowired
    private Sid sid;

    @Override
    public List<String> getRealEstateIdByAccountId(String accountId) {

        Example example = new Example(RealEstate.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("accountId", accountId);
        List<WatchList> watchLists = watchListMapper.selectByExample(example);

        if (watchLists == null) {
            GraceException.display(ResponseStatusEnum.NO_WATCH_LIST);
        }

        List<String> accountIds = new ArrayList<>();

        for (WatchList watchList:watchLists) {
            accountIds.add(watchList.getAccountId());
        }

        return accountIds;
    }

    @Override
    public void addRealEstateIdByAccountId(String realEstateId, String accountId) {

        if (StringUtils.isNotBlank(realEstateId)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }
        Example example = new Example(WatchList.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("accountId", accountId);
        criteria.andEqualTo("realEstateId", realEstateId);
        WatchList watchList = watchListMapper.selectOneByExample(example);

        if (watchList != null) {
            GraceException.display(ResponseStatusEnum.WATCH_LIST_EXIST);
        }

        WatchList newWatchList = new WatchList();
        newWatchList.setId(sid.nextShort());
        newWatchList.setAccountId(accountId);
        newWatchList.setRealEstateId(realEstateId);

        watchListMapper.insert(newWatchList);

    }

    @Override
    public void deleteRealEstateIdByAccountId(String realEstateId, String accountId) {

        if (StringUtils.isNotBlank(realEstateId)) {
            GraceException.display(ResponseStatusEnum.PARAM_EMPTY);
        }

        Example example = new Example(WatchList.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("accountId", accountId);
        criteria.andEqualTo("realEstateId", realEstateId);
        watchListMapper.deleteByExample(example);

    }
}
