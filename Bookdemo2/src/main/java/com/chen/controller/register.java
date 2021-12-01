package com.chen.controller;

import com.chen.pojo.user;
import com.chen.service.userService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class register {
    @Resource(name="userService")
    private userService u;
    @Resource(name="user")
    user u1;
    @RequestMapping("/register")
    public String queryBook(HttpSession session, String userId, String password,String vCode,String vCode12)
    {
        if(vCode.equals(vCode12)!=true){
            //如果验证码不正确，就重定向到错误页
            return "redirect:/book/error";
        }
        try{
            String msg = "";
            System.out.println("注册用户:"+userId);
            System.out.println("注册密码:"+password);
            if(userId != null) {
                if (password != null) {
                    session.setAttribute("userInfo", userId);
                    session.setAttribute("userPassword",password);
                    // System.out.println(session.getAttribute("userInfo"));
                    u1.setName(userId);
                    u1.setPwd(password);
                    u.adduser(u1);

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
        }catch (Exception e){
            //如果有异常就重定向到错误页
            return "redirect:/book/error";
        }
        //return "redirect:/book/index?id="+queryBookName;
        System.out.printf("注册成功，将返回主页");
        return "redirect:login.jsp";
    }
}
