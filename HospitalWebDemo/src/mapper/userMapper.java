package mapper;
import bean.*;
import org.apache.ibatis.annotations.Param;

public interface userMapper {
    public int rechecking(String login_name);
    public user findUserInfoByPatient(user user);
    public user findUserInfoByDoctor(user user);
    public int insertUser(user user);
    public user findUser(user user);
}
