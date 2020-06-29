package company;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class AddCompany {

    private String name;
    private String date;
    private String packages;
    private String criteria_10;
    private String criteria_12;
    private String cgpa;
    private String backlog;
    private String previous;
    private String type;
    private String collegecode;
    private String campustype;

    public int companyAdd(String name,String date,String packages,String criteria_10,String criteria_12,String cgpa,String backlog,String previous,String type,String collegecode,String campustype)
    {
        AddCompany obj = new AddCompany();
        obj.setName(name);
        obj.setDate(date);
        obj.setPackages(packages);
        obj.setCriteria_10(criteria_10);
        obj.setCriteria_12(criteria_12);
        obj.setCgpa(cgpa);
        obj.setBacklog(backlog);
        obj.setPrevious(previous);
        obj.setType(type);
        obj.setCollegecode(collegecode);
        obj.setCampustype(campustype);
        
        int i = 0;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/collegegateway","root","root");
            String sql = "insert into company values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, date);
            ps.setString(3, packages);
            ps.setString(4,criteria_10);
            ps.setString(5,criteria_12);
            ps.setString(6, cgpa);
            ps.setString(7, backlog);
            ps.setString(8,previous);
            ps.setString(9,type);
            ps.setString(10, collegecode);
            ps.setString(11, campustype);
            i = ps.executeUpdate();
           
        }
        catch(Exception ex)
        {
            ex.getMessage();
        }
        if(i > 0)
        {
            return i;
        }
        else
        {
            return 0;
        }
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

    public String getCollegecode() {
        return collegecode;
    }

    public void setCollegecode(String collegecode) {
        this.collegecode = collegecode;
    }

    public String getCampustype() {
        return campustype;
    }

    public void setCampustype(String campustype) {
        this.campustype = campustype;
    }
   
            
    
}
