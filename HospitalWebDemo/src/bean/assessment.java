package bean;

import org.springframework.stereotype.Repository;

@Repository
public class assessment {
    private   int pID;;

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    private   String pName;
    private float pScore;
    private String eTime;

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public float getpScore() {
        return pScore;
    }

    public void setpScore(float pScore) {
        this.pScore = pScore;
    }

    public String geteTime() {
        return eTime;
    }

    public void seteTime(String eTime) {
        this.eTime = eTime;
    }
}
