package com.chen.service;

import com.chen.pojo.Books;

import java.util.List;

public interface BookService {
    int addbook(Books books);

    int deletebookByid(int id);

    int updateBook(Books books);

    List<Books> queryallbook();
    List<Books> query9book();
    Books querybookByid(int id);
    List<Books> querybookByname(String bookName);
}
