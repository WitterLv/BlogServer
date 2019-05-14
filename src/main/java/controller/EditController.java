package controller;


import com.alibaba.fastjson.JSON;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import service.EditService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/login/edit")
public class EditController {

    @Autowired
    private EditService editService ;

    @RequestMapping(value = "/uploadImage.do",method = RequestMethod.POST)
    public void uploadImage(HttpServletRequest request, HttpServletResponse response,
                            @RequestParam(value = "editormd-image-file",required = false) MultipartFile attach){
        try {
            request.setCharacterEncoding("UTF-8");
            response.setHeader("Content-Type","text/html");
            response.setCharacterEncoding("UTF-8");
            String rootPath = request.getSession().getServletContext().getRealPath("/");

            //文件路径不存在则需要根据路径创建文件
            File file = new File(rootPath);
            if(!file.exists()){
                file.mkdirs();
            }

            //最终文件名
            File realFile = new File(rootPath+File.separator+attach.getOriginalFilename());

            FileUtils.copyInputStreamToFile(attach.getInputStream(), realFile);

            //返回editor.md要求的上传图片返回数据格式
            response.getWriter().write("{\"success\": 1, \"message\":\"上传成功\",\"url\":\"/resources/uploadImage/"+ attach.getOriginalFilename() +"\"}");

        } catch (Exception e) {
            try {
                response.getWriter().write("{\"success\":0,\"message\":\"上传失败:"+e.getMessage()+"\"}");
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/tagQuery.do",method = RequestMethod.GET)
    @ResponseBody
    public String tagQuery(){
       List<String> list = new ArrayList<String>();
       list.add(0,"JAVA");
       list.add(1,"HTML");
       list.add(2,"ORACLE");
       System.out.println(list.toString());
       String ja = JSON.toJSONString(list);
       return ja;
    }

    @RequestMapping("/editSave.do")
    public void editSave(HttpServletRequest request, HttpServletResponse response){
        try {
            request.setCharacterEncoding("UTF-8");
            response.setHeader("ContentType","text/html");
            response.setCharacterEncoding("UTF-8");
            if(true){
                response.getWriter().write("{\"success\": 1,\"message\": \"保存成功\"}");
            }else{
                response.getWriter().write("{\"success\": 0,\"message\": \"保存失败:\"}");
            }
        } catch (Exception e) {
            try {
                response.getWriter().write("{\"success\": 0,\"message\": \"保存失败:"+e.getMessage()+"\"}");
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        }

    }
}
