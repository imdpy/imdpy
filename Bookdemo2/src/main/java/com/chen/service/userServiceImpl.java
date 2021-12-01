package com.chen.service;

import com.chen.dao.userMapper;
import com.chen.pojo.user;

import javax.annotation.Resource;
import java.util.List;

public class userServiceImpl implements userService{
    //注入mapper接口对象
    @Resource
    private userMapper userMapper1;

    public List<user> queryuser(String id) {
        return userMapper1.queryuser(id);
    }

    public user adduser(user user) {
        userMapper1.adduser(user);
        return user;
    }

    public List<user> queryalluser() {
        return userMapper1.queryalluser();
    }

    public int deleteuserByid(int id) {
        return userMapper1.deleteuserByid(id);
    }

    public int update(user user) {
        return userMapper1.update(user);
    }
}
