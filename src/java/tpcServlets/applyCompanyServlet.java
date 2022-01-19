package tpcServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tpcImplementation.applyCompany;
import tpcPOJOClasses.companyBean;

public class applyCompanyServlet extends HttpServlet {
    private applyCompany adcmp = new applyCompany();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sname = (String)request.getSession().getAttribute("studuname");
        String name = request.getParameter("n");
        String jobdesc = request.getParameter("j");
        companyBean comp = new companyBean();
        comp.setName(name);
        comp.setJob_desc(jobdesc);
        try{
            if(adcmp.apply(comp, sname)) {
                response.sendRedirect("studentCompanyDashboard.jsp");
            } else {
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
