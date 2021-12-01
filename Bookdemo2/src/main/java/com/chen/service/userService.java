package com.chen.service;

import com.chen.pojo.Books;
import com.chen.pojo.user;

import java.util.List;

public interface userService {
    public List<user> queryuser(String id);
    user adduser(user user);
    List<user> queryalluser();
    int deleteuserByid(int id);
    int update(user user);
}
