
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

public class Down extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pic = req.getParameter("pic");
        //2021_12_16/0(20).jpg
        // 1、获取要下载的文件名
        String s1="/WEB-INF/upload/"+pic;
// 2、读取要下载的文件内容 (通过 ServletContext 对象可以读取)
        ServletContext servletContext = this.getServletContext();
// 获取要下载的文件类型
        String mimeType = servletContext.getMimeType(s1);
        System.out.println("下载的文件类型：" + mimeType);
// 4、在回传前，通过响应头告诉客户端返回的数据类型
        resp.setContentType(mimeType);
// 5、还要告诉客户端收到的数据是用于下载使用（还是使用响应头）
// Content-Disposition 响应头，表示收到的数据怎么处理
// attachment 表示附件，表示下载使用
// filename= 表示指定下载的文件名
        //resp.setHeader("Content-Disposition", "attachment; filename=" + "0(20).jpg");
/**
 * /斜杠被服务器解析表示地址为 http://ip:prot/工程名/ 映射 到代码的 Web 目录
 */
        InputStream resourceAsStream = servletContext.getResourceAsStream(s1);
// 获取响应的输出流
        OutputStream outputStream = resp.getOutputStream();
// 3、把下载的文件内容回传给客户端
// 读取输入流中全部的数据，复制给输出流，输出给客户端
        IOUtils.copy(resourceAsStream,outputStream);

    }
}
