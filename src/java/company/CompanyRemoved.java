package company;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CompanyRemoved 
{
    private String name;
    
    public int removeCompany(String name)
    {
        int i = 0;
        CompanyRemoved obj = new CompanyRemoved();
        obj.setName(name);
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegegateway","root","root");
            String sql = "delete from company where name=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
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
    
}
