package mapper;

import bean.assessment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface assessmentMapper {
    public int getAsscount(@Param("pID") int pID,@Param("eTime")String eTime);
    public List<assessment> getPatientass(int pID);
    public int insertAss(assessment assessment);
}
