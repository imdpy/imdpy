package com.chen.controller;

import com.chen.dao.BookMapper;
import com.chen.pojo.Books;
import com.chen.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    //    controller调用service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allbook")
    public String list(Model model) {
        List<Books> list = bookService.queryallbook();
        model.addAttribute("list", list);
        return "allBook";
    }

    @RequestMapping("/toaddBook")
    public String toaddBook() {
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books) {
        bookService.addbook(books);
        return "redirect:/book/allbook";
    }

    @RequestMapping("delete/{bookID}")
    public String delete(@PathVariable("bookID") int id)
    {
        bookService.deletebookByid(id);
        return "redirect:/book/allbook";
    }
    @RequestMapping("/toUpdata/{bookID}")
    public String toUpdata(@PathVariable("bookID") int id,Model model)
    {
        Books books = bookService.querybookByid(id);
        model.addAttribute("QBooks",books);
        return "updateBook";
    }
    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        System.out.println(books);
        bookService.updateBook(books);
        return "redirect:/book/allbook";
    }

}

