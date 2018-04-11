package com.wfy.springMVC;
import bean.*;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import service.serv;
import service.userService;
import tool.*;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class hosConTroller {
     private   static   userService userService = (service.userService) getContext.getBean("userService");
    @RequestMapping(value = "/hospital", method = RequestMethod.GET)
    public String index(Model model) {




        return "index";
    }
    @RequestMapping(value = "/pservice", method = RequestMethod.GET)
    public String pservice(Model model) {



        System.out.println("pservices");
        return "pservices";
    }
    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public ModelAndView pservice() {


        student student = new student();
        ModelAndView modelAndView = new ModelAndView("blog", "command", student);



        System.out.println("blog");
        return modelAndView;
    }


    @RequestMapping(value = "/visits", method = RequestMethod.GET)
@ResponseBody
    public ModelAndView visits(Model model) throws IOException {
        System.out.println("接收到出诊表请求");
        service.serv serv = (service.serv)getContext.getBean("serv") ;

        List<String> data= serv.getVisits();


        ModelAndView modelAndView = new ModelAndView("visits");
        modelAndView.addObject("jsonStr",data);

        return modelAndView;
    }
    @RequestMapping(value = "/shoplist", method = RequestMethod.GET)
    public String shoplist(Model model) {






        return "shoplist";
    }
    @RequestMapping(value = "/mpolicy", method = RequestMethod.GET)
    public String mpolicy(Model model) {




        return "faqs";
    }

    @RequestMapping(value = "/blogask", method = RequestMethod.GET)
        public ModelAndView  blogwrite() {

         student student = new student();
        ModelAndView modelAndView = new ModelAndView("blogwrite", "command", student);

        return modelAndView;
    }
    @ModelAttribute("countryList")
    public Map<String, String> getCountryList()
    {
        Map<String, String> countryList = new HashMap<String, String>();
        countryList.put("1", "创伤骨科");
        countryList.put("2", "脊柱外科");
        countryList.put("3", "骨儿科");
        countryList.put("4", "手外科");
        countryList.put("5", "关节镜科");
        countryList.put("6", "普内科");
        countryList.put("7", "外科");
        countryList.put("8", "关节外科");
        countryList.put("9", "骨质疏松科");
        countryList.put("0", "中医外科");
        countryList.put("11", "耳鼻喉科");
        countryList.put("12", "中医内科");
        countryList.put("13", "感染免疫");
        countryList.put("14", "骨肿瘤");
        countryList.put("15", "风湿病");
        countryList.put("16", "针灸科");
        countryList.put("17", "心内科");
        countryList.put("18", "针灸科");
        countryList.put("19", "肾内科");
        countryList.put("20", "内分泌");
        countryList.put("21", "干部保健");
        countryList.put("22", "神经科");
        countryList.put("23", "泌尿科");
        countryList.put("24", "新生儿");
        countryList.put("25", "妇产科");
        countryList.put("26", "眼科");
        countryList.put("27", "皮肤科");
        countryList.put("28", "口腔科");
        countryList.put("29", "血管外科");
        countryList.put("20", "心理咨询");
        countryList.put("31", "重症医学");
        countryList.put("32", "整形外科");
        countryList.put("33", "心胸外科");






        return countryList;
    }
    @RequestMapping(value = "/showblog", method = RequestMethod.GET)
   @ResponseBody
    public PageInfo<blog> getBlog(@RequestParam("curPage") int curPage) throws Exception{
        System.out.println("收到博客请求"+curPage);
        PageInfo<blog> PageInfo=  userService.getblogs(curPage);

//        ModelAndView modelAndView = new ModelAndView("blog");

//        ObjectMapper objectMapper = new ObjectMapper();
//        String blogs = objectMapper.writeValueAsString(list);
//        modelAndView.addObject("blogs",list);
        return  PageInfo;


    }

    @RequestMapping(value = "/blogfilter", method = RequestMethod.GET)
    @ResponseBody
    public PageInfo<blog> blogfilter(@RequestParam("curPage") int curPage ,@RequestParam("department") Integer department,@RequestParam("question") String question) throws Exception{
        System.out.println("收到博客过滤请求"+curPage);
        PageInfo<blog> PageInfo=  userService.getblogfilter(department,question,curPage);

//        ModelAndView modelAndView = new ModelAndView("blog");

//        ObjectMapper objectMapper = new ObjectMapper();
//        String blogs = objectMapper.writeValueAsString(list);
//        modelAndView.addObject("blogs",list);
        return  PageInfo;


    }

    @RequestMapping(value = "/relpy", method = RequestMethod.GET)
    public ModelAndView single(@RequestParam("sendID") int sendID) throws JsonProcessingException,UnsupportedEncodingException {
        System.out.println("收到单页请求"+sendID);
        new Thread(){
            @Override
            public void run() {
                userService.updataReadCount(sendID);
            }
        }.start();
        List<Object> map =  userService.getReplys(sendID);

        ModelAndView modelAndView = new ModelAndView("single");

//        ObjectMapper objectMapper = new ObjectMapper();
//        String replys = objectMapper.writeValueAsString(list);
        modelAndView.addObject("replys",map);


        System.out.println("single");
        return modelAndView;
    }







    @RequestMapping(value = "/tplan", method = RequestMethod.GET)
@ResponseBody
    public Map<String,String> plan(tPlan tPlan){
        serv serv = (service.serv) getContext.getBean("serv");
       int i =  serv.insertPlan(tPlan);
        if (i == 0) {

        }
        Map<String,String> map = new HashMap<>();
       map.put("data","1");
        return map;
    }



    @RequestMapping(value = "/plan", method = RequestMethod.GET)
    @ResponseBody
    public tPlan plan(int p_id){
        serv serv = (service.serv) getContext.getBean("serv");
        tPlan  i =  serv.getPlan(p_id);


        return i;
    }
}
