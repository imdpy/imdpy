package com.chen.dao;

import com.chen.pojo.Books;

import java.util.List;


import org.apache.ibatis.annotations.Param;

public interface BookMapper {
    int addbook(Books books);

    int deletebookByid(@Param("bookId") int id);

    int updateBook(Books books);

    List<Books> queryallbook();

    Books querybookByid(@Param("bookId") int id);

}
