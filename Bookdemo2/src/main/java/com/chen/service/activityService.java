package com.chen.service;

import com.chen.dao.activityMapper;
import com.chen.pojo.activity;
import com.chen.pojo.order;
import com.chen.pojo.user;

import javax.annotation.Resource;
import java.util.List;

public interface activityService {

    public List<activity> queryactivity();
    int update(activity activity);
}
