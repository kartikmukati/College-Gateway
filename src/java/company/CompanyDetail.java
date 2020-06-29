package company;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CompanyDetail 
{
    private String name;
    private String date;
    private String packages;
    private String criteria_10;
    private String criteria_12;
    private String cgpa;
    private String backlog;
    private String previous;
    private String type;

    public CompanyDetail detailCompany(String name)
    {
        CompanyDetail obj = new CompanyDetail();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Collegegateway","root","root");
            String sql = "select * from company where name = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs =  ps.executeQuery();
            rs.next();
            obj.setName(rs.getString(1));
            obj.setDate(rs.getString(2));
            obj.setPackages(rs.getString(3));
            obj.setCriteria_10(rs.getString(4));
            obj.setCriteria_12(rs.getString(5));
            obj.setCgpa(rs.getString(6));
            obj.setBacklog(rs.getString(7));
            obj.setPrevious(rs.getString(8));
            obj.setType(rs.getString(9));
            con.close();
        }
        catch(Exception ex)
        {
            ex.getMessage();
        }
        return obj;
        
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPackages() {
        return packages;
    }

    public void setPackages(String packages) {
        this.packages = packages;
    }

    public String getCriteria_10() {
        return criteria_10;
    }

    public void setCriteria_10(String criteria_10) {
        this.criteria_10 = criteria_10;
    }

    public String getCriteria_12() {
        return criteria_12;
    }

    public void setCriteria_12(String criteria_12) {
        this.criteria_12 = criteria_12;
    }

    public String getCgpa() {
        return cgpa;
    }

    public void setCgpa(String cgpa) {
        this.cgpa = cgpa;
    }

    public String getBacklog() {
        return backlog;
    }

    public void setBacklog(String backlog) {
        this.backlog = backlog;
    }

    public String getPrevious() {
        return previous;
    }

    public void setPrevious(String previous) {
        this.previous = previous;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    
    
}
