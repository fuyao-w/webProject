package bean;

import org.springframework.stereotype.Repository;

@Repository
public class reply {
    public int replyID;
    public String sendID;
    public String loginName;
    public int role;
    public String replyCont;
    public String rPic;

    public String getrPic1() {
        return rPic1;
    }

    public void setrPic1(String rPic1) {
        this.rPic1 = rPic1;
    }

    public String rPic1;
    public String rData;

    public String getrData() {
        return rData;
    }

    public void setrData(String rData) {
        this.rData = rData;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }


    public int getReplyID() {
        return replyID;
    }

    public void setReplyID(int replyID) {
        this.replyID = replyID;
    }

    public String getSendID() {
        return sendID;
    }

    public void setSendID(String sendID) {
        this.sendID = sendID;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getReplyCont() {
        return replyCont;
    }

    public void setReplyCont(String replyCont) {
        this.replyCont = replyCont;
    }

    public String getrPic() {
        return rPic;
    }

    public void setrPic(String rPic) {
        this.rPic = rPic;
    }
}
