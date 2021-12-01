package com.chen.dao;

import com.chen.pojo.order;
import com.chen.pojo.user;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface orderMapper {
    int addorder(order order);
    public List<order> queryorder(@Param("userId") String id);
    public List<order> allorderlist();
    int deleteorderByid(@Param("orderId") int orderId);
    int update(order order);
}
