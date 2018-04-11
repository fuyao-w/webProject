package mapper;

import bean.blog;
import bean.reply;

import java.util.List;

public interface replyMapper {
    public int insertReply(reply reply);
    public List<reply> getRelpy(int sendID);
}
