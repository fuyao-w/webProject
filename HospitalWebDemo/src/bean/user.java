package bean;

import org.springframework.stereotype.Repository;
import bean.*;
@Repository
public class user {
   public String login_name="no";
   public String pword;
   public Integer tu_id;
   public Integer role;
   public String id_num;
   public patient patient;
    public doctor doctor;
    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }

    public String getPword() {
        return pword;
    }

    public void setPword(String pword) {
        this.pword = pword;
    }

    public Integer getTu_id() {
        return tu_id;
    }

    public void setTu_id(Integer tu_id) {
        this.tu_id = tu_id;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public String getId_num() {
        return id_num;
    }

    public void setId_num(String id_num) {
        this.id_num = id_num;
    }

    public bean.patient getPatient() {
        return patient;
    }

    public void setPatient(bean.patient patient) {
        this.patient = patient;
    }

    public bean.doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(bean.doctor doctor) {
        this.doctor = doctor;
    }




}
