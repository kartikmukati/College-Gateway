/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package company;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Kartik Mukati
 */
public class UpdateDetail 
{
    private String date;
    private String packages;
    private String criteria_10;
    private String criteria_12;
    private String cgpa;
    private String backlog;
    private String previous;
    private String type;
    private String name;

    public int updateDetail(String name,String date,String packages,String criteria_10,String criteria_12,String cgpa,String backlog,String previous,String type)
    {
        int i =0;
        UpdateDetail obj = new UpdateDetail();
        obj.setName(name);
        obj.setDate(date);
        obj.setPackages(packages);
        obj.setCriteria_10(criteria_10);
        obj.setCriteria_12(criteria_12);
        obj.setCgpa(cgpa);
        obj.setBacklog(backlog);
        obj.setPrevious(previous);
        obj.setType(type);
        try
        {
            String sql = "update company set date=?,package=?,criteria_10=?,criteria_12=?,cgpa=?,backlog=?,previous_placed=?,type=? where name= ?";
            Class.forName("com.mysql.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Collegegateway","root","root");
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, date);
            ps.setString(2, packages);
            ps.setString(3,criteria_10);
            ps.setString(4,criteria_12);
            ps.setString(5, cgpa);
            ps.setString(6, backlog);
            ps.setString(7,previous);
            ps.setString(8,type);
            ps.setString(9, name);
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
