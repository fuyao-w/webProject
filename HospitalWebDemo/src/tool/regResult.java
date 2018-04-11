package tool;

import bean.user;
import org.springframework.stereotype.Repository;

@Repository
public class regResult {
    public  String regResult;

    public bean.user getUser() {
        return user;
    }

    public void setUser(bean.user user) {
        this.user = user;
    }

    bean.user user;

    public String getRegResult() {
        return regResult;
    }

    public void setRegResult(String regResult) {
        this.regResult = regResult;
    }
}
