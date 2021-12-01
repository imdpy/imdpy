package com.chen.service;

import com.chen.dao.activityMapper;
import com.chen.pojo.activity;
import com.chen.pojo.order;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

public class activitySeviceImpl implements activityService{
    @Resource
    private activityMapper activityMapper;
    @RequestMapping("/activitylist")
    @ResponseBody  // 用于转换对象为json
    public List<activity> queryactivity() {
        return activityMapper.queryactivity();
    }

    public int update(activity activity) {
        return activityMapper.update(activity);
    }
}
