package com.chen.config;

import com.chen.pojo.activity;
import com.chen.service.BookService;
import com.chen.service.activityService;
import com.chen.service.userService;
import com.chen.service.userServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class Myin implements HandlerInterceptor {
    @Resource(name="activityService")
    private activityService activity;
    //没错我就是拦截器！！
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler,HttpSession session) throws Exception {
        System.out.println("-----拦截啦——————————");
       if (request.getSession().getAttribute("userInfo") != "")
       {
           if(request.getSession().getAttribute("userInfo") != null){
               //用户口令通过，不进行重定向操作
               System.out.println("用户："+request.getSession().getAttribute("userInfo")+"发起操作，允许通过");
               //允许用户进入登陆成功页
               return true;
           }
           else {
               //尝试拦截null
               System.out.println("该死的null用户，想绕过验证直接进入系统？想得美");
               //重定向回登录页
               response.sendRedirect("../login.jsp");
               return false;
           }
        }
        return false;
    }
}
