package bean;

import org.springframework.stereotype.Repository;

import java.util.Date;
@Repository
public class patient {
    public Integer p_id;
    public Integer doc_id;
    public String p_name;
    public String id_card;
    public Integer districtID;
    public String call_num;
    public String t_project;
    public String remarks;
    public String be_hos_date;
    public Integer sex;
    public Integer age;

    public patient(){

    }


    public Integer getP_id() {
        return p_id;
    }

    public void setP_id(Integer p_id) {
        this.p_id = p_id;
    }

    public Integer getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(Integer doc_id) {
        this.doc_id = doc_id;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public Integer getDistrictID() {
        return districtID;
    }

    public void setDistrictID(Integer districtID) {
        this.districtID = districtID;
    }

    public String getCall_num() {
        return call_num;
    }

    public void setCall_num(String call_num) {
        this.call_num = call_num;
    }

    public String getT_project() {
        return t_project;
    }

    public void setT_project(String t_project) {
        this.t_project = t_project;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getBe_hos_date() {
        return be_hos_date;
    }

    public void setBe_hos_date(String be_hos_date) {
        this.be_hos_date = be_hos_date;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}
