package com.chen.controller;

import com.chen.pojo.Books;
import com.chen.pojo.activity;
import com.chen.service.BookService;
import com.chen.service.activityService;
import com.chen.service.activitySeviceImpl;
import com.chen.service.userService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class index {
    @Resource(name="userService")
    private userService u;
    @Resource(name="activityService")
    private activityService activity;
    //    controller调用service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;
    @RequestMapping("/queryBook")
    public String queryBook(HttpSession session, Model model, String queryBookName, String password, String vCode1, String vCode11)
    {
        try {
            String msg = "";
            System.out.println("操作用户:"+queryBookName);
            //验证码判断
            if(vCode1.equals(vCode11)!=true){
                return "redirect:/book/error";
            }
            if(queryBookName != null) {
                if (password != null) {
                    session.setAttribute("userInfo", queryBookName);
                    session.setAttribute("userPassword",password);
                    String ok=""+u.queryuser(queryBookName);
                    String userString=ok.replace("{","");
                    userString=ok.replace("}","").split(",")[2].replace("'","").replace("pwd=","").replace(" ","").replace("]","");
                    String useridString=ok.replace("}","").split(",")[0].replace("'","").replace("id=","").replace(" ","").replace("]","").replace("[user{","");
                    if(userString.equals(password)){
                        System.out.println("密码验证正确：执行到登录页");
                        //这里是加载轮播活动的
                        List<activity> q = activity.queryactivity();
                       session.setAttribute("hdok1",q);
                        String Rotation=""+q;
                        Rotation=Rotation.replace("[","").replace("]","").replace("{","").replace("},",";").replace("}","").replace(" ","");
                        String [] Rotations=Rotation.split(";");
                        String hd="";
                        for(int i=0;i<Rotations.length;i++){
                            session.setAttribute("hdmc"+i, Rotations[i].split(",")[1].replace("activity='","").replace("'",""));
                            session.setAttribute("hdtp"+i, Rotations[i].split(",")[2].replace("picaddr='","").replace("'",""));
                        }
                        List<Books> bk=bookService.query9book();
                        for (int bsk=0;bsk<9;bsk++){
                            session.setAttribute("Books"+bsk,bk.get(bsk));
                        }
                        String bks=""+bk;
                        bks=bks.replace("[","").replace("]","").replace("Books{","");
                        String [] bkd=bks.split("}, ");
                        for (int bkjsq=0;bkjsq<bkd.length;bkjsq++){
                            if(bkd[bkjsq].contains("}"))bkd[bkjsq]=bkd[bkjsq].replace("}","");
                            session.setAttribute("bookID"+bkjsq,bkd[bkjsq].split(", ")[0].replace("bookID=",""));
                            session.setAttribute("bookName"+bkjsq,bkd[bkjsq].split(", ")[1].replace("bookName='","").replace("'",""));
                            session.setAttribute("price"+bkjsq,bkd[bkjsq].split(", ")[4].replace("price=",""));
                            session.setAttribute("picaddr"+bkjsq,bkd[bkjsq].split(", ")[5].replace("picaddr='","").replace("'",""));
                        }
                        //加载完成记录下用户id和用户名
                        session.setAttribute("id", queryBookName);//用户名
                        session.setAttribute("toid", useridString);//用户id
                        //如果是管理员登录且密码正确
                        if(queryBookName.equals("admin"))
                            return "redirect:/book/allbook";
                        //普通用户
                        return "redirect:/book/index?id="+queryBookName;
                    }
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
            //可能会出现无用户的情况，这里跳转到错误页面
            //由错误页面二次跳转回登录页面
            return "redirect:/book/error";
        }
        //return "redirect:/book/index?id="+queryBookName;
        System.out.printf("密码输入有误，提醒重试");
        return "redirect:/book/error";
    }
}
