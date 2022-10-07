package com.g7.common;

import com.github.pagehelper.PageInfo;
import io.swagger.models.auth.In;

import java.util.List;

public class PageUtils {

    public static PagedGridResult setterPagedGrid(List<?> list,
                                                  Integer page, Integer pageSize) {

        int firstIndex = (page - 1) * pageSize;
        if (firstIndex > list.size()) {
            firstIndex = 0;
        }

        int lastIndex = firstIndex + pageSize;

        PagedGridResult gridResult = new PagedGridResult();

        gridResult.setPage(page);
        gridResult.setRecords(list.size() > pageSize ? pageSize : list.size());
        gridResult.setTotal(list.size());

        try {
            list.subList(firstIndex, lastIndex - 1);
        }catch(Exception e){
            list.subList(firstIndex, list.size());
        }
        gridResult.setRows(list);
        return gridResult;
    }
}
