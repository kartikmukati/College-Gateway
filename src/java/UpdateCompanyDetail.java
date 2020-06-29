import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UpdateCompanyDetail extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String date = request.getParameter("date");
        String packages = request.getParameter("package");
        String criteria_10 = request.getParameter("criteria_10");
        String criteria_12 = request.getParameter("criteria_12");
        String cgpa = request.getParameter("cgpa");
        String backlog = request.getParameter("backlog");
        String previous = request.getParameter("previous");
        String type = request.getParameter("type");
        HttpSession session = request.getSession();
        String name = (String)session.getAttribute("cname");
        
        company.UpdateDetail obj = new company.UpdateDetail();
        int i = obj.updateDetail(name, date, packages, criteria_10, criteria_12, cgpa, backlog, previous, type);
        if(i > 0)
        {
            response.sendRedirect("updatesuccessfully.jsp");
        }
        else
        {
            response.sendRedirect("updateerror.jsp");
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
