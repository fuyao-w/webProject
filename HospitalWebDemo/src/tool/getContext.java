package tool;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class getContext {
    public static Object getBean(String beanName){
        ApplicationContext context = new ClassPathXmlApplicationContext("resources/applicationContext.xml");
        Object o =  context.getBean(beanName);
        return o;
    }
}
