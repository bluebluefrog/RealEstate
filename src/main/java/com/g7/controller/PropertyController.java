package com.g7.controller;

import com.g7.common.JSONResult;
import com.g7.common.PagedGridResult;
import com.g7.service.PropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/property")
public class PropertyController {

    @Autowired
    private PropertyService propertyService;


    @GetMapping("/list")
    public JSONResult listAllProperty(@RequestParam Integer page,
                                       @RequestParam Integer pageSize){

        if (page == null) {
            page = 1;
        }
        if (pageSize == null) {
            pageSize = 10;
        }

        PagedGridResult pagedGridResult = propertyService.listAllProperty(page, pageSize);


        return JSONResult.ok(pagedGridResult);
    }
}
