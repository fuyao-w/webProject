package bean;

import org.springframework.stereotype.Repository;

@Repository
public class doctor {
   private Integer doc_id;
    private String doc_name;
    private Integer doc_age;
    private String department;
    private String hospital;
    private String levels;
    private Integer d_level;

    public Integer getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(Integer doc_id) {
        this.doc_id = doc_id;
    }

    public String getDoc_name() {
        return doc_name;
    }

    public void setDoc_name(String doc_name) {
        this.doc_name = doc_name;
    }

    public Integer getDoc_age() {
        return doc_age;
    }

    public void setDoc_age(Integer doc_age) {
        this.doc_age = doc_age;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getHospital() {
        return hospital;
    }

    public void setHospital(String hospital) {
        this.hospital = hospital;
    }

    public String getLevels() {
        return levels;
    }

    public void setLevels(String levels) {
        this.levels = levels;
    }

    public Integer getD_level() {
        return d_level;
    }

    public void setD_level(Integer d_level) {
        this.d_level = d_level;
    }
}
