package com.chen.service;

import com.chen.dao.BookMapper;
import com.chen.pojo.Books;

import java.util.List;
import java.util.Random;

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

    public List<Books> query9book() {
        Random r = new Random();
        int SJ = r.nextInt(5);//随机数，用于取出数据库中书籍信息用于前台
        return bookMapper.query9book(SJ);
    }

    public Books querybookByid(int id) {
        return bookMapper.querybookByid(id);
    }

    public  List<Books> querybookByname(String bookName) {
        return bookMapper.querybookByname(bookName);
    }
}
