import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserLogin extends HttpServlet 
{
    private Connection con;
    private PreparedStatement ps;
    
    public void init()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CollegeGateway","root","root");
        }
        catch(Exception ex)
        {
            ex.getMessage();
        }
    }
   public void destroy()
    {
        try
        {
            con.close();
        }
        catch(Exception ex)
        {
            ex.getMessage();
        }
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
        //PrintWriter out = response.getWriter();
        //read
        
        String username = request.getParameter("enrollmentno");
        
        String password = request.getParameter("password");
        
       //process
       
        String sql = "select first_name,last_name,gender from users where enrollment_no = ? and password = ?";
        try
        {
           ps = con.prepareStatement(sql);
           ps.setString(1, username);
           ps.setString(2, password);
           ResultSet rs =  ps.executeQuery();
          
           boolean b = rs.next();
           if(b == true)
           {
               String firstname = rs.getString(1);
               String lastname = rs.getString(2);
               String gender = rs.getString(3);
               
               HttpSession session = request.getSession();
               session.setAttribute("firstname", firstname);
               session.setAttribute("lastname", lastname);
               session.setAttribute("gender", gender);
               response.sendRedirect("userdashboard.jsp");
           }
           else
           {
                response.sendRedirect("userlogin.jsp");
           }
           
        }
        catch(Exception ex)
        {
            ex.getMessage();
        }
        
        
        //response
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
