package com.g7.common;

import com.github.pagehelper.PageInfo;
import io.swagger.models.auth.In;

import java.util.List;

public class PageUtils {

    public static PagedGridResult setterPagedGrid(List<?> list,
                                                  Integer page, Integer pageSize) {

        int firstIndex = (page - 1) * pageSize;

        int lastIndex = (page - 1) * pageSize;


        PagedGridResult gridResult = new PagedGridResult();

        gridResult.setPage(page);
        gridResult.setRecords(pageSize);
        gridResult.setTotal(list.size());
        try {
            list.subList(firstIndex, lastIndex);
        }catch(Exception e){
            list.subList(firstIndex, list.size() - firstIndex);
        }
        gridResult.setRows(list);
        return gridResult;
    }
}
