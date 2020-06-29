
package company;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpSession;

public class Important 
{
    private String message;
    private String subject;
    private String code;
    
    public int messageAdd(String subject,String message,String code){
        Important obj = new Important();
        obj.setSubject(subject);
        obj.setMessage(message);
        obj.setCode(code);
        int i = 0;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegegateway", "root","root");
            String sql = "insert into important (subject,message,college_code) values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, subject);
            ps.setString(2, message);
            ps.setString(3, code);
            i = ps.executeUpdate();
        }catch(Exception e){
            e.getMessage();
        }
        if(i>0){
            return i;
        }
        else if(i==0){
            return 0;
        }
        return 2;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
    
    
}
