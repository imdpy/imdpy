package com.chen.controller;


import com.chen.dao.activityMapper;
import com.chen.pojo.activity;
import com.chen.pojo.user;
import com.chen.service.activityService;
import com.chen.service.userService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/activity")
public class activityController {
    //    controller调用service层
    @Resource(name="activityService")
    private activityService activity1;
    @RequestMapping("/Hdlist")
    public void Hdlist(HttpSession session,String id){
        //这里是加载轮播活动的
        List<activity> q = activity1.queryactivity();
        String Rotation=""+q;
        Rotation=Rotation.replace("[","").replace("]","").replace("{","").replace("},",";").replace("}","").replace(" ","");
        String [] Rotations=Rotation.split(";");
        String hd="";
        for(int i=0;i<Rotations.length;i++){
            session.setAttribute("hdmc"+i, Rotations[i].split(",")[1].replace("activity='","").replace("'",""));//传入活动数据
            session.setAttribute("hdtp"+i, Rotations[i].split(",")[2].replace("picaddr='","").replace("'",""));
        }
    }
    @RequestMapping("/toUpdata")
    public  String toUpdata(HttpSession session, Model model,String activity,String picaddr) {
        activity a=new activity();
        a.setId(1);
        a.setActivity(activity);
        a.setPicaddr(picaddr);
        System.out.println("修改后的活动1"+a);
        try {
            activity1.update(a);
        }catch (Exception e){
            FFHD(session,model);
            return "allactivity";
        }
        FFHD(session,model);
        return "allactivity";
    }
    @RequestMapping("/toUpdata1")
    public  String toUpdata1(HttpSession session, Model model,String activity2,String picaddr2) {
        activity a=new activity();
        a.setId(2);
        a.setActivity(activity2);
        a.setPicaddr(picaddr2);
        System.out.println("修改后的活动2"+a);
        try {
            activity1.update(a);
        }catch (Exception e){
            FFHD(session,model);
            return "allactivity";
        }
        FFHD(session,model);
        return "allactivity";
    }
    @RequestMapping("/toUpdata2")
    public  String toUpdata2(HttpSession session, Model model,String activity3,String picaddr3) {
        activity a=new activity();
        a.setId(3);
        a.setActivity(activity3);
        a.setPicaddr(picaddr3);
        System.out.println("修改后的活动3"+a);
        try {
            activity1.update(a);
        }catch (Exception e){
            FFHD(session,model);
            return "allactivity";
        }
        FFHD(session,model);
        return "allactivity";
    }
    @RequestMapping("/allactivity")
    public  String allactivity(HttpSession session, Model model) {
        FFHD(session,model);
        return "allactivity";
    }
    public void FFHD(HttpSession session, Model model){
        //这里是加载轮播活动的
        List<activity> q = activity1.queryactivity();
        session.setAttribute("hdok1",q);
        String Rotation=""+q;
        Rotation=Rotation.replace("[","").replace("]","").replace("{","").replace("},",";").replace("}","").replace(" ","");
        String [] Rotations=Rotation.split(";");
        String hd="";
        for(int i=0;i<Rotations.length;i++){
            session.setAttribute("hdmc"+i, Rotations[i].split(",")[1].replace("activity='","").replace("'",""));
            session.setAttribute("hdtp"+i, Rotations[i].split(",")[2].replace("picaddr='","").replace("'",""));
        }
    }

}
