package com.chen.service;

import com.chen.pojo.order;
import com.chen.pojo.user;

import javax.annotation.Resource;
import java.util.List;

public class orderServiceImpl implements orderService{
    @Resource
    private com.chen.dao.orderMapper orderMapper;
    public int adduorder(order order) {
        return orderMapper.addorder(order);
    }

    public List<order> queryuser(String id) {
        return orderMapper.queryorder(id);
    }

    public List<order> allorderlist() {
        return orderMapper.allorderlist();
    }

    public int deleteorderByid(int orderId) {
        return orderMapper.deleteorderByid(orderId);
    }

    public int update(order order) {
        return orderMapper.update(order);
    }


}
