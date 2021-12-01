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

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    //    controller调用service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private  BookService bookService;
    @RequestMapping("/allbook")
    public String list(HttpSession session,Model model) {
        //二次拦截
        try{
            if(session.getAttribute("id").equals("admin")!=true)
                return "error";
        }catch (Exception e){
            return "error";
        }
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
        System.out.println("这本书修改后是："+books);
        bookService.updateBook(books);
        return "redirect:/book/allbook";
    }
    @RequestMapping("/toaddorder/{bookID}")
    public String toaddorder(@PathVariable("bookID") int id,Model model,HttpSession session)
    {
        Books books = bookService.querybookByid(id);
        session.setAttribute("buybook", books);
        model.addAttribute("GBooks",books);
        return "redirect:/order/toaddorder";
    }
    @RequestMapping("/ok")
    public static String ok(String picaddr) {
        System.out.println(picaddr);
        return "ok";
    }
    @RequestMapping("/nobook")
    public static String nobook() {
        return "nobook";
    }
    @RequestMapping("/error")
    public static String error(HttpSession session) {
        session.setAttribute("id",null);
        session.setAttribute("toid",null);
        session.setAttribute("userPassword",null);
        session.setAttribute("userInfo",null);
        return "error";
    }

    @RequestMapping("/RotationPic")
    public static String RotationPic() {
        return "RotationPic";
    }

    @RequestMapping("/seach")
    public  String seach(Model model,HttpSession session,String bookName) {
        //控制器的二次拦截
        try{
            if(session.getAttribute("toid").equals("null"))return "error";
        }catch (Exception e){
            return "error";
        }
        if(bookName.contains(","))bookName=bookName.replace(",","");
        System.out.println("搜索书名："+bookName+"完成");
        List<Books> books = bookService.querybookByname("%"+bookName+"%");
        session.setAttribute("bookName", bookName);
        model.addAttribute("book",books);
        return "seach";
    }
    @RequestMapping("/index")
    public static String index(HttpSession session,String id) {
        //二轮判断，如果session的登录信息被清除，就跳回登录页（error）
       try{
           if(session.getAttribute("toid").equals("null"))return "error";
       }catch (Exception e){
           return "error";
       }
        return "index";
    }
}

