import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminRegistration extends HttpServlet 
{
    private Connection con;
    private PreparedStatement ps;
    
    public void init()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Collegegateway","root","root");
            String sql = "insert into admin values(?,?,?,?,?,?,?)";
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
           String college_code = request.getParameter("college_code");
           
           String college_name = request.getParameter("college_name");
           
           String contactno = request.getParameter("contactno");
           
           String address = request.getParameter("address");
           
           String city = request.getParameter("city");
           
           String email = request.getParameter("email");
           
           String password = request.getParameter("password");
           
           String checkbox = request.getParameter("checkbox");
          
           if (checkbox != null) {
           int i=0;
           try
           {
               
               ps.setString(1, college_code);
               ps.setString(2, college_name);
               ps.setString(3, password);
               ps.setString(4, contactno);
               ps.setString(5, email);
               ps.setString(6, address);
               ps.setString(7, city);
               i = ps.executeUpdate();
           }
           catch(Exception ex)
           {
               out.println(ex.getMessage());
           }
       
            if(i > 0)
            {
                response.sendRedirect("adminlogin.jsp");
            }
            else
            {
                response.sendRedirect("adminregistration.jsp");
            }
        } else {
               response.sendRedirect("adminregistration.jsp");
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
