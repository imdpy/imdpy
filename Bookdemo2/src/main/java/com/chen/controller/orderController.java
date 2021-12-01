package com.chen.controller;

import com.chen.pojo.Books;
import com.chen.pojo.order;
import com.chen.service.BookService;
import com.chen.service.orderService;
import com.chen.service.userService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/order")
public class orderController {
    //    controller调用service层
    @Resource(name="orderService")
    private orderService orderService;
    @Resource(name="order")
    order o1;
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;
    @RequestMapping("/toaddorder")
    public String toaddorder(order order,HttpSession session,Model model) {
        //控制器的二次拦截
        try{
            if(session.getAttribute("toid").equals("null"))return "error";
        }catch (Exception e){
            return "error";
        }
        Books buybook = (Books) session.getAttribute("buybook");
        model.addAttribute("GBooks",buybook);
        return "addOrder";
    }
    @RequestMapping("/addorder")
    public String addorder(HttpSession session,int userId,int bookId ,String addr,String uname,String uphone,String remarks) {
        //控制器的二次拦截
        try{
            if(session.getAttribute("toid").equals("null"))return "error";
        }catch (Exception e){
            return "error";
        }
        System.out.println("购买成功");
        o1.setUserId(userId);
        o1.setBookId(bookId);
        o1.setAddr(uname+","+uphone+","+addr);
        o1.setRemarks(""+remarks);
        orderService.adduorder(o1);
        return "redirect:/order/addorderok";
    }
    @RequestMapping("/toaddorderby")
    public String toaddorderby(HttpSession session,Model model,int bkid) {
        //控制器的二次拦截
        try{
            if(session.getAttribute("toid").equals("null"))return "error";
        }catch (Exception e){
            return "error";
        }
        Books buybook =null;
        if(bkid==1)buybook= (Books) session.getAttribute("Books0");
        else  if(bkid==2)buybook= (Books) session.getAttribute("Books1");
        else  if(bkid==3)buybook= (Books) session.getAttribute("Books2");
        else  if(bkid==4)buybook= (Books) session.getAttribute("Books3");
        else  if(bkid==5)buybook= (Books) session.getAttribute("Books4");
        else  if(bkid==6)buybook= (Books) session.getAttribute("Books5");
        else  if(bkid==7)buybook= (Books) session.getAttribute("Books6");
        else  if(bkid==8)buybook= (Books) session.getAttribute("Books7");
        else  if(bkid==9)buybook= (Books) session.getAttribute("Books8");
        model.addAttribute("GBooks",buybook);
        return "addOrder";
    }
    @RequestMapping("/addorderok")
    public String addorderok() {
        return "addorderok";
    }
    @RequestMapping("/record")
    public String record(HttpSession session,String id,Model model) {
        //控制器的二次拦截
        try{
            if(session.getAttribute("toid").equals("null"))return "error";
        }catch (Exception e){
            return "error";
        }
        try{

            List<order> queryuser = orderService.queryuser(id);
            model.addAttribute("userrecord",queryuser);
            String gm=""+queryuser;
            gm=gm.replace("[","").replace("]","").replace("order{","");
            String [] gmok=gm.split("}, ");
            Books books=null;
            String bop=null;
            String bopp="";
            String boppprice="";
            String boppname="";
            //String[] opbb=new String[gmok.length];
            for(int i=0;i<gmok.length;i++){
                int op=Integer.parseInt(gmok[i].split(", ")[2].replace("bookId=","")) ;
                books= bookService.querybookByid(op);//每次接受
                bop=""+books;//缓存对象
                bop=bop.replace("Books{","").replace("}","");//缓存对象
                // opbb[i]=bop.split(",")[5].replace("picaddr='","").replace("'}","").replace("'","");
                if(i!= gmok.length-1){
                    bopp=bopp+bop.split(",")[5].replace("picaddr='","").replace("'}","").replace("'","")+"!!";
                    boppname=boppname+bop.split(",")[1].replace("bookName=","").replace("'","")+"!!";
                    boppprice=boppprice+bop.split(",")[4].replace("price=","").replace("'","")+"!!";
                }
                else {
                    bopp=bopp+bop.split(",")[5].replace("picaddr='","").replace("'}","").replace("'","");
                    boppname=boppname+bop.split(",")[1].replace("bookName=","").replace("'","");
                    boppprice=boppprice+bop.split(",")[4].replace("price=","").replace("'","");
                }
            }
            //model.addAttribute("opbb",opbb);//数组
            session.setAttribute("opbb1",bopp);//String对象
            session.setAttribute("opbb1name",boppname);//String对象
            session.setAttribute("opbb1price",boppprice);//String对象
        }catch (Exception e){
            return "redirect:/book/nobook";
        }
        return "record";
    }
    @RequestMapping("/allorder")
    public String allorder() {
        return "allorder";
    }
    @RequestMapping("/allorderlist")
    public String allorderlist(Model model) {
        List<order> queryuser = orderService.allorderlist();
        model.addAttribute("allorderlist",queryuser);
        return "allorder";
    }
    @RequestMapping("/deleteorderByid")
    public String deleteorderByid(int orderId) {
        System.out.println("删除的订单："+orderId);
        int i = orderService.deleteorderByid(orderId);
        return "redirect:/order/allorderlist";
    }
    @RequestMapping("/update")
    public String update(Model model,order order) {
        int update = orderService.update(order);
        return "redirect:/order/allorderlist";
    }

}

