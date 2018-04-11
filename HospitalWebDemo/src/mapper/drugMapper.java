package mapper;


import bean.drug;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface drugMapper {
    public List<drug> findDrugBytype(Integer typeID);
}
