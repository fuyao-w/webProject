package mapper;

import bean.tPlan;

public interface tPlanMapper {
    public int updataPlan(tPlan tPlan);
    public tPlan get(int p_id);
}
