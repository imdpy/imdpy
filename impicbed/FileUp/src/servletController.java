import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class servletController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setHeader("Access-Control-Allow-Origin", "*");//解决跨域问题
        req.setCharacterEncoding("UTF-8");
        System.out.printf("一个post请求\n");
        String endPath="";
        String dateNowStr="";
        String Topic="";//返回给前端的访问地址
        //判断上传的文件是不是多段数据
        if(ServletFileUpload.isMultipartContent(req)){
            //创建创建FileItemFactory工厂实现类
            FileItemFactory file=new DiskFileItemFactory();
            // 创建用于解析上传数据的工具类ServletFileUpload类
            ServletFileUpload servletFileUpload=new ServletFileUpload(file);
            try {
                List<FileItem> list = servletFileUpload.parseRequest(req);
                // 循环判断，每一个表单项，是普通类型，还是上传的文件
                for (FileItem fileItem : list) {
                    if (fileItem.isFormField()) {
                        // 普通表单项
                        System.out.println("表单项的name属性值：" + fileItem.getFieldName());
                        // 参数UTF-8.解决乱码问题
                        System.out.println("表单项的value属性值：" + fileItem.getString("UTF-8"));

                    } else {
                        // 上传的文件
                        System.out.println("表单项的name属性值：" + fileItem.getFieldName());
                        System.out.println("上传的文件名：" + fileItem.getName());
                        //2.创建上传文件的保存路径，建议在WEB-INF路径下
                        Date d = new Date();
                        System.out.println(d);
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                        dateNowStr = sdf.format(d).replace("-","_");
                        Topic=dateNowStr+"/"+fileItem.getName();//返回给前端的访问地址
                        System.out.println("格式化后的日期：" + dateNowStr);
                        String upcache="/WEB-INF/upload/"+dateNowStr;//地址命名为时间/图片
                        String uploadPath = this.getServletContext().getRealPath(upcache);
                        File uploadFile = new File(uploadPath);
                        if (!uploadFile.exists()) {
                            uploadFile.mkdirs();//如果保存目录不存在，就创建一个目录
                        }
                        System.out.printf("路径："+uploadPath);
                        fileItem.write(new File(uploadPath+"/" + fileItem.getName()));
                        endPath=uploadPath+"/" + fileItem.getName();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        resp.setContentType("text/html;charset=UTF-8");
        //图片格式矫正
        String endPath1="URL/FileUp/down?pic="+"/"+Topic;
        //矫正完成
        String result = "{\"info\":\"添加成功\",\"name\":\"imdpy\",\"picaddr\":\""+endPath1+"\"}";
        System.out.printf("\n"+result+"\n");
        System.out.println("当前项目：URL/FileUp/down?pic="+"/"+Topic);
        resp.getWriter().print(result);
//        resp.sendRedirect("../login.jsp");
    }
@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.printf("一个get请求\n");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out=resp.getWriter();
        out.println("不用尝试了，此路不通-IM大朋友");
    }
}
