package com.chen.dao;

import com.chen.pojo.Books;
import com.chen.pojo.user;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

public interface userMapper {
    int adduser(user user);
    public List<user> queryuser(@Param("userId") String id);
    List<user> queryalluser();
    int deleteuserByid(@Param("id") int id);
    int update(user user);
}
