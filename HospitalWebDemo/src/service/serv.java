package service;



import bean.*;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import mapper.*;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import tool.regResult;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Service
public class serv {

@Autowired
  private   SqlSessionFactory sqlSessionFactory;
@Autowired
private SqlSessionTemplate SqlSessionTemplate;
    @Autowired
    private  bean.user user2;
    @Autowired
    private patientMapper patientMapper;
    @Autowired
    private   userMapper userMapper;
    @Autowired
    private  visitMapper visitMapper;
    @Autowired
    private  tPlanMapper tPlanMapper;
public  List<String> getVisits()throws JsonProcessingException {

    System.out.println("接收到出诊请求");
    List<visit> visits = visitMapper.selectDocVisit();
    List<visit> count = visitMapper.selectDeCount();
    count.stream().forEach(o-> System.out.println(o.getDeparCount()));

    List<String> list = new LinkedList<>();
    ObjectMapper objectMapper = new ObjectMapper();
    String jsonStr1 = objectMapper.writeValueAsString(visits);
    String jsonStr2 = objectMapper.writeValueAsString(count);
    System.out.println(jsonStr1);
    System.out.println(jsonStr2);
    list.add(jsonStr1);
    list.add(jsonStr2);



    return list;
}


public int regUser(user user){



    String  result = String.valueOf(userMapper.insertUser(user));

   if (result==null)
       return 0;
   return Integer.parseInt(result);



}

   public int check(String login_name){


    int result = userMapper.rechecking(login_name);
    return result;
}

    public user findUser(user user){

  user2 =userMapper.findUser(user);


        return user2;
    }

    public regResult getUserInfo(user user){


        regResult regResult = new regResult();

            int role = user.getRole();
        System.out.println("role:"+role);
            switch (role) {
                case 0: {
                    regResult.setRegResult("200");
                    regResult.setUser(user);

                    break;
                }
                case 1: {
                    regResult.setRegResult("200");
                    regResult.setUser(userMapper.findUserInfoByPatient(user));
                    break;
                }
                case 2: {
                    regResult.setRegResult("200");
                    regResult.setUser(userMapper.findUserInfoByDoctor(user));
                    break;
                }
                case 3: {
                    regResult.setRegResult("200");
                    regResult.setUser(userMapper.findUserInfoByDoctor(user));
                    break;
                }
                case 4: {
                    regResult.setRegResult("200");
                    regResult.setUser(userMapper.findUserInfoByDoctor(user));
                    break;
                }


            }



        return regResult;
    }

    public int insertPlan(tPlan tPlan){
     int i = tPlanMapper.updataPlan(tPlan);
 return i;
}
    public tPlan getPlan(int p_id){
        tPlan tPlan2 = tPlanMapper.get(p_id);
        return tPlan2;
    }

}
