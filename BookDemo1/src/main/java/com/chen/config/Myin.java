package com.chen.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Myin implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("-----拦截啦——————————");
       if (request.getSession().getAttribute("userInfo") != "")
       {
           System.out.println(request.getSession().getAttribute("userInfo"));
            return true;
        }
        return false;
    }
}
