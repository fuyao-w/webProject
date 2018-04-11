package service;

import bean.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import mapper.userMapper;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class userService {
    private static final int pageSize = 5;
    private static final int pageSize1 = 9;
    private static int picCount=0;
    @Autowired
    private SqlSessionFactory sqlSessionFactory;
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    @Autowired

    private bean.user user;
    @Autowired

    private bean.assessment assessment;
    @Autowired
    private mapper.patientMapper patientMapper;
    @Autowired
    private mapper.hosinfoMapper hosinfoMapper;
    @Autowired
    private mapper.policyMapper policyMapper;
    @Autowired
    private mapper.drugMapper drugMapper;
    @Autowired
    private mapper.assessmentMapper assessmentMapper;
    @Autowired
    private mapper.blogMapper blogMapper;
    @Autowired
    private mapper.replyMapper replyMapper;
    @Autowired
    private hosinfo hosinfo;
    @Autowired
    private userMapper userMapper;

    public hosinfo getHosInfo() {
        hosinfo = hosinfoMapper.selectHosInfo();
        return hosinfo;
    }

    public PageInfo<policy> getploicy(int districtID, int curPage) {

        PageHelper.startPage(curPage, pageSize);



        List<policy> plist = policyMapper.selectpolicy(districtID);

//        plist.stream().forEach(o -> System.out.println(o.getPolName()));

        PageInfo<policy> pageInfo = new PageInfo<>(plist);

        return pageInfo;
    }

    public PageInfo<drug> getDrug(int typeID, int curPage) {
        System.out.println("执行到1");
        PageHelper.startPage(curPage, pageSize1);
        List<drug> plist = drugMapper.findDrugBytype(typeID);

        plist.stream().forEach(o -> System.out.println(o.getDrName()));
        System.out.println("执行到3");
        PageInfo<drug> pageInfo = new PageInfo<>(plist);
        System.out.println("执行到4");
        return pageInfo;
    }

    public String surveyService(survey survey) {
        Date today = new Date();
        SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-dd");

        int asscount = assessmentMapper.getAsscount(survey.getpID(), format.format(today));

        assessment.seteTime(format.format(today));
        assessment.setpID(survey.getpID());

        if (asscount < 3) {
            float z = 4;
            float c = 4;
            if (survey.getOpl6() != 16)
                survey.setOpl6(survey.getOpl6() + survey.getOpt());
            if (survey.getOpl8() != 8)
                survey.setOpl8(2 * survey.getSelect());
            if (survey.getZj() != 0 || survey.getCd() != 0) {
                z = 4 / survey.getZj();
                c = 4 / survey.getCd();
            }

            float score = survey.getOpl1() + survey.getOpl2() + survey.getOpl3() + survey.getOpl4() + survey.getOpl5()
                    + survey.getOpl7() + survey.getOpl9() + survey.getOpl6() + survey.getOpl8() + z + c;

            assessment.setpScore(score);
            assessmentMapper.insertAss(assessment);
            return String.format("%.2f", score);
        } else
            return "ban";


    }

    public List<assessment> getAss(int pID) {


        List<assessment> list = assessmentMapper.getPatientass(pID);
        return list;
    }


    public List<String>  blogPicUpload(MultipartFile[] uploadFile, HttpServletRequest request) {
        System.out.println("收到文件的长度"+uploadFile.length);
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String filrPath = "G:\\Proimg";
        String netPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
        File fileDir = new File(filrPath);
        if (fileDir.exists())
            fileDir.mkdir();
            List<String> list = new LinkedList<>();


         Arrays.stream(uploadFile).forEach(o->{
             System.out.println("循环");
            String fileName = o.getOriginalFilename();
             String suffix = fileName.substring(fileName.indexOf("."));
             String newFileName = "IMG_"+new Random().nextInt(100)+"_"+ format.format(date) + suffix;
             System.out.println(newFileName);
            File file = new File(filrPath, newFileName);
             try {

                 o.transferTo(file);
               String filePath = netPath+"/Proimg/"+newFileName;



                 list.add(filePath);
             } catch (IOException e) {
                 e.printStackTrace();
             }
         });

                return list;




    }











    public int blogInsert(blog blog){
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        blog.setsData(format.format(date));

              int result = blogMapper.insertBlog(blog);

              return  result;

    }

    public  PageInfo<blog> getblogs(int curPage){
        System.out.println("开始查询博客");
        PageHelper.startPage(curPage, pageSize);
        List<blog> list = blogMapper.getBlogs();
        list.stream().forEach(o->{

           int index= o.getsData().lastIndexOf(".");
           String str = o.getsData().substring(0,index);
           o.setsData(str);

        });
        PageInfo<blog> pageInfo = new PageInfo<>(list);

        return  pageInfo;

    }

    public  PageInfo<blog> getblogfilter(int department ,String question,int curPage){
        System.out.println("开始查询过滤博客");
        PageHelper.startPage(curPage, pageSize);
        List<blog> list = blogMapper.Blogfilter(department,question);
        list.stream().forEach(o->{

            int index= o.getsData().lastIndexOf(".");
            String str = o.getsData().substring(0,index);
            o.setsData(str);

        });
        PageInfo<blog> pageInfo = new PageInfo<>(list);

        return  pageInfo;

    }

    public List<Object>  getReplys (Integer sendID)throws UnsupportedEncodingException{
        System.out.println("开始查询单页"+sendID);
        List<reply> list = replyMapper.getRelpy(sendID);
        blog blog = blogMapper.getBlog(sendID);
        int index1= blog.getsData().lastIndexOf(".");
        String str1 = blog.getsData().substring(0,index1);
        blog.setsData(str1);
       List<Object> list1 = new LinkedList<>();
        System.out.println("回复表");
        list.stream().forEach(o->{





            int index= o.getrData().lastIndexOf(".");
            String str = o.getrData().substring(0,index);
            o.setrData(str);

        });

       list1.add(list);
       list1.add(blog);



        return  list1;

    }

    public void updataReadCount(int sendID){
        blogMapper.updataReadCount(sendID);
    }


    public int InsertReplys(reply reply) throws UnsupportedEncodingException{
         Date date = new Date();
         SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

       reply.setrData(format.format(date));
        System.out.println(reply.rData);
     int i= replyMapper.insertReply(reply);

          return i;
    }


    public  List<patient> patient(String doc_id,int page,int rows) throws UnsupportedEncodingException{
  page = page-1+(page*5);
//        PageHelper.startPage(page, rows);
     List<patient>  list= patientMapper.findPatients(doc_id,page,rows);
//        PageInfo<patient> pageInfo = new PageInfo<>(list);


        return list;
    }

    public  int patientCount() throws UnsupportedEncodingException{
           int count=   patientMapper.findAllPatientsCount();
        return count;
    }
}
