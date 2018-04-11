package mapper;

import bean.policy;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface policyMapper {
    public List<policy> selectpolicy(int districtID);

}
