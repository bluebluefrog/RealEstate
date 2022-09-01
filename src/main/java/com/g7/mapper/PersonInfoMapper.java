package com.g7.mapper;


import com.g7.entity.PersonInfo;
import com.g7.my.mapper.MyMapper;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonInfoMapper extends MyMapper<PersonInfo> {
}