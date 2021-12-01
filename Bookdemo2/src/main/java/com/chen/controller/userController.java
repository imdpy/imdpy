package com.chen.controller;


import com.chen.pojo.Books;
import com.chen.pojo.user;
import com.chen.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class userController {
    //    controller调用service层
    @Resource(name="userService")
    private userService userService;
    @RequestMapping("/list")
    @ResponseBody  // 用于转换对象为json
    public List<user> queryuser(String id){
        List<user> list = userService.queryuser(id);
        return list;
    };
    @RequestMapping("/adduser")
    public String addBook(user user) {
        userService.adduser(user);
        return "redirect:login.jsp";
    }
    @RequestMapping("/about")
    public String about() {
        return "about";
    }
    @RequestMapping("/alluser")
    public String alluser(Model model) {
        List<user> queryalluser = userService.queryalluser();
        model.addAttribute("queryalluser",queryalluser);
        return "alluser";
    }
    @RequestMapping("/toUpdatauser")
    public String toUpdatauser(Model model,String id,String name,String pwd) {
        System.out.println("修改密码========="+id+name+pwd);
        user u=new user();
        u.setId(Integer.parseInt(id));
        u.setPwd(pwd);
        u.setName(name);
        System.out.println("修改后的密码："+u);
        userService.update(u);
        return "redirect:/customer/alluser";
    }
    @RequestMapping("/detail")
    public String detail(HttpSession session, String id) {
        System.out.println("搜索id："+id);
        List<user> list = queryuser(id);
        String userd=""+list;
        userd=userd.replace("[user{","").replace("}]","").replace("[user{","").replace("}]","");;
        String[] user=userd.split(",");
        System.out.println(""+list);
        session.setAttribute("userid", user[0].replace("id=",""));
        session.setAttribute("username", user[1].replace("name=","").replace("'",""));
        session.setAttribute("userpwd", user[2].replace("pwd=","").replace("'",""));
        return "detail";
    }
    @RequestMapping("delete/{id}")
    public String delete(@PathVariable("id") int id)
    {
        userService.deleteuserByid(id);
        return "redirect:/customer/alluser";
    }
}
