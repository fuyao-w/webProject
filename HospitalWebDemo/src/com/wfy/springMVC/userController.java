package com.wfy.springMVC;

import bean.*;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

import org.apache.ibatis.annotations.Case;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import service.*;
import sun.security.ec.SunEC;
import tool.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.*;

@Controller
@RequestMapping("/userhelp/")
public class userController {
  static   userService userService = (service.userService) getContext.getBean("userService");
private static final ThreadLocal<userService> userServiceThreadLocal = new ThreadLocal<userService>(){
    @Override
    public userService get() {
        System.out.println("线程名"+Thread.currentThread().getName());
        return super.get();
    }

    @Override
    protected userService initialValue() {

        return userService;


    }
};

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public regResult register(@RequestBody user user, regResult regResult) {
        System.out.println("收到请求");


        serv serv = (service.serv) getContext.getBean("serv");

        int check = serv.check(user.login_name);


        if (check == 0) {


            if (user.id_num == null) {
                user.role = 0;
            } else
                user.role = 1;

            int reslut = 0;
            reslut = serv.regUser(user);
            System.out.println(reslut);
            if (reslut != 0)
                regResult.setRegResult("注册成功");

        } else {
            regResult.setRegResult("您的用户名已经存在，请重新注册");
        }

        return regResult;

    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public regResult login(@RequestBody user user, regResult regResult) {
        System.out.println("收到登录请求");
        serv serv = (service.serv) getContext.getBean("serv");
        user loguser = new user();

        loguser = serv.findUser(user);
resou

        if (loguser == null)
            regResult.setRegResult("404");
        else {
            regResult = serv.getUserInfo(loguser);

        }
        return regResult;
    }

    @RequestMapping(value = "/hosinfo", method = RequestMethod.POST)
    @ResponseBody
    public hosinfo hosInfo(hosinfo hosinfo) {
        System.out.println("收到材料请求");

        hosinfo = userService.getHosInfo();
        System.out.println(hosinfo.getHosinfo1());
        return hosinfo;
    }

    @RequestMapping(value = "/showshop", method = RequestMethod.GET)
    @ResponseBody
    public PageInfo<drug> getshop(int typeID, int curPage) {
        System.out.println("收到药品展示请求");
        System.out.println(typeID + "   " + curPage);


        PageInfo<drug> Info = userService.getDrug(typeID, curPage);

        return Info;
    }

    @RequestMapping(value = "/policy", method = RequestMethod.GET)
    @ResponseBody
    public PageInfo<policy> getPolicy(int districtID, int curPage) {

        System.out.println(districtID + "   " + curPage);

//        userService userService=    userServiceThreadLocal.get();
        PageInfo<policy> Info = userService.getploicy(districtID, curPage);

        return Info;
    }


    @RequestMapping(value = "/survey", method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, String> surveyss(Model model, @RequestBody survey survey) {

        System.out.println("收到评分请求" + survey.getOpl1());



     userService userService=    userServiceThreadLocal.get();


        String score = userService.surveyService(survey);

        HashMap<String, String> map = new HashMap<>();
        map.put("score", score);

        System.out.println(score);
        return map;
    }

    @RequestMapping(value = "/assessment", method = RequestMethod.GET)
    @ResponseBody
    public List<assessment> assessment(@RequestParam(value = "pID") String pID) {

        System.out.println("收到评估请求" + pID);


        List<assessment> list = userService.getAss(Integer.parseInt(pID));
        list.stream().forEach(o -> System.out.println(o.getpName()));
        return list;
    }



    @RequestMapping(value = "/bolgPicUpload", method = RequestMethod.POST)
    @ResponseBody
    public List<String> fileUpLoad(@ModelAttribute(value = "uploadFile") MultipartFile[] uploadFile ,HttpServletRequest request) {
        System.out.println("上传"+uploadFile.length);
        List<String> map =   userService.blogPicUpload(uploadFile,request);


          return map;

    }
    @RequestMapping(value = "/blogReply", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String,String> blogReply(@RequestBody  reply reply) throws Exception {
        System.out.println("收到回复请求");



      int i=  userService.InsertReplys(reply);
      Map<String,String> map = new HashMap<>();
        if (i != 0){
            map.put("data","success");
        return map;}
        else {
            map.put("data","failed");
            return map;
        }

    }








    @RequestMapping(value = "/blogwrite", method = RequestMethod.POST)
@ResponseBody
    public Map<String,Integer> blogwrite(@RequestBody blog blog) {


        Map<String,Integer> map = new HashMap<>();
        int res=  userService.blogInsert(blog);
        if (res != 0)
            map.put("data",200);

          else
             map.put("data",400);
        return map;
    }
    @RequestMapping(value = "/patientquery", method = RequestMethod.GET)
    @ResponseBody
    public   Map<String,Object>  patientQuery(HttpServletRequest request)throws UnsupportedEncodingException {
      String  p=request.getParameter("page");
        String r=request.getParameter("rows");
        String doc_id =request.getParameter("doc_id");
int page = Integer.parseInt(p);
int rows = Integer.parseInt(r);
        System.out.println("grid信息"+page+" "+rows+" "+doc_id);
        List<patient> pageInfo = userService.patient(doc_id,page,rows);

        int count = userService.patientCount();
int total=count%rows==0?count/rows:count/rows+1;


Map<String,Object> map = new HashMap<>();
map.put("page",page);

map.put("total",total);
map.put("records",rows);
map.put("rows",pageInfo);




        return map;
    }

}