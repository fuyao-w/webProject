package bean;

import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

/**
 * @param drMaerial 材料
 * @param drEffCon 用量及药效
 * @param inappro 不适宜人群
 * @param eatDos 食用方法
 * @param specifi 规格
 *
 *
 */



@Repository
public class drug {
   public Integer drID;
    public String drName;
    public String drMaterial;
    public String drEffCon;
    public String inappro;
    public String eatDos;
    public String specifi;
    public String drPic;
    public String type;
    public Integer typeID;
    public String others;

    public String getOthers() {
        return others;
    }

    public void setOthers(String others) {
        this.others = others;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getTypeID() {
        return typeID;
    }

    public void setTypeID(Integer typeID) {
        this.typeID = typeID;
    }


    public Integer getDrID() {
        return drID;
    }

    public void setDrID(Integer drID) {
        this.drID = drID;
    }

    public String getDrName() {
        return drName;
    }

    public void setDrName(String drName) {
        this.drName = drName;
    }

    public String getDrMaterial() {
        return drMaterial;
    }

    public void setDrMaterial(String drMaterial) {
        this.drMaterial = drMaterial;
    }

    public String getDrEffCon() {
        return drEffCon;
    }

    public void setDrEffCon(String drEffCon) {
        this.drEffCon = drEffCon;
    }

    public String getInappro() {
        return inappro;
    }

    public void setInappro(String inappro) {
        this.inappro = inappro;
    }

    public String getEatDos() {
        return eatDos;
    }

    public void setEatDos(String eatDos) {
        this.eatDos = eatDos;
    }

    public String getSpecifi() {
        return specifi;
    }

    public void setSpecifi(String specifi) {
        this.specifi = specifi;
    }

    public String getDrPic() {
        return drPic;
    }

    public void setDrPic(String drPic) {
        this.drPic = drPic;
    }


}
