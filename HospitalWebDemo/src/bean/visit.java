package bean;

import org.springframework.stereotype.Repository;


public class visit {

 private String doc_id;

    public int getDeparCount() {
        return deparCount;
    }

    public void setDeparCount(int deparCount) {
        this.deparCount = deparCount;
    }

    private int deparCount;
 private String t_visit;
     private doctor doctor;

    public bean.doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(bean.doctor doctor) {
        this.doctor = doctor;
    }

    public String getDoc_id() {
    return doc_id;
  }

  public void setDoc_id(String doc_id) {
    this.doc_id = doc_id;
  }

  public String getT_visit() {
    return t_visit;
  }

  public void setT_visit(String t_visit) {
    this.t_visit = t_visit;
  }
}
