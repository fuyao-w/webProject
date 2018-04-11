package mapper;

import bean.blog;
import org.apache.ibatis.annotations.Param;


import java.util.List;


public interface blogMapper {
    public int insertBlog(blog blog);
    public List<blog> getBlogs();
    public blog getBlog(int sendID);
    public void updataReadCount(int sendID);
    public List<blog> Blogfilter(@Param("department")int department ,@Param("question") String question);
}
