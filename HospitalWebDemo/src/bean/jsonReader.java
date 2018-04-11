package bean;

import org.springframework.stereotype.Repository;

@Repository
public class jsonReader {
    String rows;
    String page;
    String total;
    String records;

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getRecords() {
        return records;
    }

    public void setRecords(String records) {
        this.records = records;
    }

    public String getRows() {

        return rows;
    }

    public void setRows(String rows) {
        this.rows = rows;
    }
}
