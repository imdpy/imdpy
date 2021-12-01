package com.chen.service;

import com.chen.pojo.Books;
import com.chen.pojo.order;
import com.chen.pojo.user;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface orderService {
    int adduorder(order order);
    public List<order> queryuser(@Param("userId") String id);
    public List<order> allorderlist();
    int deleteorderByid(int orderId);
    int update(order order);
}
