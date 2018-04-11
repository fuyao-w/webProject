package com.wfy.springMVC;


import bean.student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import sun.swing.FilePane;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/")
public class SecondController {


//    @RequestMapping(value = "/f", method = RequestMethod.GET)
//    public String fupaa() {
//
//        return "FileUPload";
//    }
//
    @RequestMapping(value = "/fups", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> fileUpLoad(@ModelAttribute(value = "uploadFile") student student, MultipartFile uploadFile, HttpSession httpSession) throws Exception {
        //  student student = new student();
        String fileName = uploadFile.getOriginalFilename();
        String filrPath = "G:\\Proimg";
        File file = new File(filrPath, fileName);
        uploadFile.transferTo(file);
        student.setPicFilePath(filrPath + File.separator + file);
        System.out.println(student.getPicFilePath());
        Map<String,String> map = new HashMap<>();
        map.put("file","wang");
        return map;
    }
//    @RequestMapping(value = "/stu")
//    public String fupaaa() {
//
//        return "stu";
//    }
//    @RequestMapping(value = "/selstu", method = RequestMethod.POST)
//@ResponseBody
//    public student reJson() {
//       student student= new student();
//       student.setName("王扶摇");
//       student.setId(123);
//        return student;
//    }

}
