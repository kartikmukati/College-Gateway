import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserRegistration extends HttpServlet 
{
    private Connection con;
    private PreparedStatement ps;
    
    public void init()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Collegegateway","root","root");
            String sql = "insert into users values(?,?,?,?,?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
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
            PrintWriter out = response.getWriter();
         //read
           String firstname = request.getParameter("firstname");
           
           String lastname = request.getParameter("lastname");
           
           String enrollmentno = request.getParameter("enrollmentno");
           
           String gender = request.getParameter("gender");
           
           String semester = request.getParameter("semester");
           
           String branch = request.getParameter("branch");
           
           String contactno = request.getParameter("contactno");
           
           String address = request.getParameter("address");
           
           String city = request.getParameter("city");
           
           String email = request.getParameter("email");
           
           String password = request.getParameter("password");
           
           String college_code = enrollmentno.substring(0,4);
           
       
           
       //process
           int i=0;
           try
           {
               
               ps.setString(1, firstname);
               ps.setString(2, lastname);
               ps.setString(3, enrollmentno);
               ps.setString(4, gender);
               ps.setString(5, semester);
               ps.setString(6, branch);
               ps.setString(7, contactno);
               ps.setString(8, address);
               ps.setString(9, city);
               ps.setString(10, email);
               ps.setString(11, password);
               ps.setString(12, college_code);
               i = ps.executeUpdate();
               
               
           }
           catch(Exception ex)
           {
               out.println(ex.getMessage());
           }
        //response
           
        if(i > 0)
        {
            response.sendRedirect("userlogin.jsp");
        }
        else
        {
            out.println("Faild");
        }
    
  
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
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
