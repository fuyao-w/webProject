package bean;

import org.springframework.stereotype.Repository;

@Repository
public class blog {

    private Integer sendID;
    private String loginName;
    private String department;

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    private String title;
    private String content;
    private String sPic;
    private String sPic1;
    private String readCount;
    private String sData;

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    private Integer role;

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getsPic() {
        return sPic;
    }

    public void setsPic(String sPic) {
        this.sPic = sPic;
    }

    public String getsPic1() {
        return sPic1;
    }

    public void setsPic1(String sPic1) {
        this.sPic1 = sPic1;
    }

    public String getReadCount() {
        return readCount;
    }

    public void setReadCount(String readCount) {
        this.readCount = readCount;
    }

    public String getsData() {
        return sData;
    }

    public void setsData(String sData) {
        this.sData = sData;
    }

    public Integer getSendID() {

        return sendID;
    }

    public void setSendID(Integer sendDd) {
        this.sendID = sendDd;
    }
}
