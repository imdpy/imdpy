package com.chen.controller;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@Controller
public class index {
    @RequestMapping("/queryBook")
    public String queryBook(HttpSession session, String queryBookName, String password)
    {
        String msg = "";
        System.out.println(queryBookName);
        if(queryBookName != null) {
            if (password != null) {
                session.setAttribute("userInfo", queryBookName);

                session.setAttribute("userPassword",password);
                System.out.println(session.getAttribute("userInfo"));
            }
            else
            {
                msg = "密码有误";
            }
        }
            else
            {
                msg = "有误";
            }

        return "redirect:/book/allbook";
    }
}
