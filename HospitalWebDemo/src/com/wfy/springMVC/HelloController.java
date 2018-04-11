//package com.wfy.springMVC;
//
//
//import service.serv;
//import bean.student;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.servlet.ModelAndView;
//
//import java.io.UnsupportedEncodingException;
//import java.util.*;
//
//@Controller
//@RequestMapping("/userhelp/")
//public class HelloController {
//
//
//    @RequestMapping(value = "/hi", method = RequestMethod.GET)
//    public String printHello(Model model) {
//
//        model.addAttribute("message", "Hello Spring MVC Framework!");
//
//        System.out.println("返回结果");
//        return "";
//    }
//
//    @RequestMapping(value = "/student",method = RequestMethod.GET)
//    public ModelAndView showStudent() {
//        student student = new student();
//        student.setFavoriteFrameworks(new String[]{"Spring MVC","Struts 2"});
//        student.setGender(1);
//        return new ModelAndView("student","command",student);
//    }
//
//
//    @RequestMapping(value = "/addstudent",method = RequestMethod.POST)
//    public String addStudent(ModelMap model) throws UnsupportedEncodingException {
//        ApplicationContext context = new ClassPathXmlApplicationContext("resources/applicationContext.xml");
//        serv serv = (service.serv) context.getBean("serv");
//
//
//
//
////        @ModelAttribute(name = "stu") student student ,
////       String  str = student.getName();
////       String name = new String(str.getBytes("ISO-8859-1"),"utf-8");
////
////
//        model.addAttribute("name", student.getName());
//        model.addAttribute("age", student.getAge());
//        model.addAttribute("id", student.getId());
//        model.addAttribute("favoriteFrameworks",student.getFavoriteFrameworks());
//        model.addAttribute("gender",student.getGender());
//        model.addAttribute("province",student.getProvince());
////        StringBuffer stringBuffer = new StringBuffer();
////        for (int i = 1; i <=student.getFavoriteFrameworks().length ; i++) {
////          if (i != student.getFavoriteFrameworks().length){
////              stringBuffer.append(student.getFavoriteFrameworks()[i-1]+",");
////          }else {
////              stringBuffer.append(student.getFavoriteFrameworks()[i-1]);
////          }
////
////        }
//
////        System.out.println(stringBuffer.toString());
//
//
//        return "result";
//    }
//
//
//  //  @RequestMapping(value = "/hi",method = RequestMethod.GET)
//    public String reDriect(){
//        return  "redirect:finalPage";
//    }
//    @RequestMapping(value = "/finalPage",method = RequestMethod.GET)
//    public String finalPagez(){
//        return  "finalPage";
//    }
//    @ModelAttribute("webFrameworkList")
//    public List<String> getWebFrameworkList()
//    {
//        List<String> webFrameworkList = new ArrayList<String>();
//        webFrameworkList.add("Spring MVC");
//        webFrameworkList.add("Spring Boot");
//        webFrameworkList.add("Struts 2");
//        webFrameworkList.add("Apache Hadoop");
//        return webFrameworkList;
//    }
//    @ModelAttribute("provinceList")
//    public Map<String, String> getCountryList()
//    {
//        Map<String, String> countryList = new HashMap<String, String>();
//        countryList.put("BJ", "北京");
//        countryList.put("SH", "上海");
//        countryList.put("GZ", "广州");
//
//        return countryList;
//    }
//}
