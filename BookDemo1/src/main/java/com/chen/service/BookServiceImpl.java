package com.chen.service;

import com.chen.dao.BookMapper;
import com.chen.pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService{

    //service调dao层 组合dao层
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addbook(Books books) {
        return bookMapper.addbook(books);
    }

    public int deletebookByid(int id) {
        return bookMapper.deletebookByid(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public List<Books> queryallbook() {
        return bookMapper.queryallbook();
    }

    public Books querybookByid(int id) {
        return bookMapper.querybookByid(id);
    }
}
