package bean;

import com.sun.istack.internal.NotNull;
import org.springframework.stereotype.Repository;

@Repository
public class student {

    private Integer age;
    private String[] favoriteFrameworks;
    private String name;
    private Integer id;
    private String province;
    private String picFilePath;
    private String country;
    private int gender;
    public String getPicFilePath() {
        return picFilePath;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setPicFilePath(String picFilePath) {
        this.picFilePath = picFilePath;
    }



    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }



    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }



    public String[] getFavoriteFrameworks() {
        return favoriteFrameworks;
    }

    public void setFavoriteFrameworks(String[] favoriteFrameworks) {
        this.favoriteFrameworks = favoriteFrameworks;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAge() {

        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }



}
