package mapper;
import bean.patient;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface patientMapper {
    public patient findPatient(Integer p_id);
    public List<patient> findPatients(@Param("doc_id") String doc_id , @Param("page")int page ,@Param("rows") int rows);
    public int findAllPatientsCount();
}
