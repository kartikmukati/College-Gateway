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

public class AdminLogin extends HttpServlet 
{
    private Connection con;
    private PreparedStatement ps;
    
    public void init()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Collegegateway","root","root");
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
        String collegecode = request.getParameter("collegecode");
        String password = request.getParameter("password");
        
        String sql = "select * from admin where college_code = ? and password = ?";
        try
        {
            ps = con.prepareStatement(sql);
            ps.setString(1, collegecode);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            boolean b = rs.next();
            if(b == true)
            {
                HttpSession session = request.getSession();
                session.setAttribute("collegecode", rs.getString(1));
                session.setAttribute("collegename", rs.getString(2));
                response.sendRedirect("admindashboard.jsp");
            }
            else
            {
                response.sendRedirect("adminlogin.jsp");
            }
        }
        catch(Exception ex)
        {
            ex.getMessage();
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
