package com.chen.dao;

import com.chen.pojo.activity;
import com.chen.pojo.order;
import com.chen.pojo.user;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface activityMapper {
    public List<activity> queryactivity();
    int update(activity activity);
}
